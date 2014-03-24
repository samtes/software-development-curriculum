class MyApp
  def initialize(args, stdout)
    @stdout = stdout
  end

  def run
   @stdout.puts "Welcome!"
   input = gets #Julie
   @stdout.puts "Welcome, #{input.strip}"
   input = gets #Bob
   @stdout.puts "Welcome, #{input.strip}"
  end

end
