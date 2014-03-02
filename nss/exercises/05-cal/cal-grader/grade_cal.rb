#!/usr/bin/env ruby
require 'csv'


def clone_code
  @output = []
  CSV.foreach("cal_turnin.csv", headers: true) do |row|
    name = "#{row["First Name"].strip} #{row["Last Name"].strip}"
    repo_url = row["SSH Clone URL"]
    @output << "#{name}"
    if repo_url.nil?
      @output << "[x] #{name} has no clone URL!"
    else
      destination_folder = "student_code/" + name.downcase.gsub(/\s/,"_")
      unless File.directory?(destination_folder)
        @output << "[✓] Cloning #{repo_url} into #{destination_folder}"
        try_command("git clone #{repo_url} #{destination_folder}")
      else
        @output << "[✓] Updating #{destination_folder}"
        try_command("cd #{destination_folder}; git pull")
      end
    end
  end
end

def try_rake
  @output = ["","",""]
  CSV.foreach("cal_turnin.csv", headers: true) do |row|
    name = "#{row["First Name"].strip} #{row["Last Name"].strip}"
    @output << "Grading #{name}"
    code_folder = "student_code/" + name.downcase.gsub(/\s/,"_")
    unless File.directory?(code_folder)
      @output << "[x] #{name} has no code available to grade!"
    else
      `cd #{code_folder}`
      commands = [
        { command: "ruby lib/test_one_month.rb #{code_folder}", description: "a single month", full_output: false, reset_failure: true },
        { command: "ruby lib/test_more_months.rb #{code_folder}", description: "more months", full_output: false, skip_if_previous_failure: true },
        # { command: "ruby lib/test_all_months.rb #{code_folder}", description: "all months", full_output: true, skip_if_previous_failure: true },
        { command: "ruby lib/test_one_year.rb #{code_folder}", description: "a single year", full_output: false, reset_failure: true },
        { command: "ruby lib/test_more_years.rb #{code_folder}", description: "more years", full_output: false, skip_if_previous_failure: true },
        # { command: "ruby lib/test_all_years.rb #{code_folder}", description: "all years", full_output: true, skip_if_previous_failure: true },
        { command: "cd #{code_folder}; rake", description: "rake", full_output: false },
      ]
      commands.each do |command|
        @previous_failure = false if command[:reset_failure]
        if command[:skip_if_previous_failure] and @previous_failure
          @output << "[?] #{command[:description]} skipped"
        elsif try_command(command[:command], false)
          @output << "[✓] #{command[:description]} passed"
        else
          @previous_failure = true
          append = command[:full_output] ? @result : ""
          @output << "[x] #{command[:description]} failed! #{append}"
        end
      end
    end
  end
end


def try_command(command, be_strict = true)
  @result = `#{command}`
  exit_status = $?.exitstatus.to_i
  success = (exit_status == 0)
  if !success
    message = "Command `#{command}` failed with exit status #{exit_status}"
    if be_strict
      print_output
      raise message
    end
  end
  return success
end

def print_output
  puts @output.join("\n")
end

unless ARGV[0] == "--no-clone"
  clone_code
  print_output
end
unless ARGV[0] == "--skip-tests"
  try_rake
  print_output
end
