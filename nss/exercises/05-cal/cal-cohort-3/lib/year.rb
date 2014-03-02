require_relative 'month'

class Year
  STANDARD_YEAR_WIDTH = 62
  STANDARD_MONTH_HEIGHT = 8

  def initialize(year)
    @year = year
  end

  def self.is_leap_year?(year)
    if (year % 4) == 0
      (year % 100) != 0 || (year % 400) == 0
    else
      false
    end
  end

  def to_i
    @year
  end

  def to_s
    lines = [ @year.to_s.center(STANDARD_YEAR_WIDTH).rstrip,
              "" ]
    lines.join("\n")
    (1..12).each_slice(3) do |months|
      month1 = Month.new(months[0], @year).to_s.split("\n")
      month2 = Month.new(months[1], @year).to_s.split("\n")
      month3 = Month.new(months[2], @year).to_s.split("\n")

      if month1.length < STANDARD_MONTH_HEIGHT
        month1 << " "
      end

      full_quarter = month1.zip(month2, month3)

      full_quarter.each do |line_strings|
        deniled_lines = line_strings.map{ |month_line| (month_line || "") }

        full_lines = deniled_lines.map do |month_line|
          if month_line =~ /\s*(\w+)\s(\d{4})\s*/
            "#{$1}".center(Month::STANDARD_MONTH_WIDTH)
          else
            month_line.ljust(Month::STANDARD_MONTH_WIDTH)
          end
        end

        striped_line = full_lines.join("  ").rstrip
        lines << striped_line.ljust((2 + Month::STANDARD_MONTH_WIDTH) * 2," ")
      end
    end
    lines
  end
end
