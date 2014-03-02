require 'date'

class Calendar
  MONTHS = %w{ January February March April May June July August September October November December }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def format_calendar
    output = month_header
    output << "\n"
    output << "Su Mo Tu We Th Fr Sa\n"
    output << formatted_days
  end

  def month_header
    month_name = MONTHS[@month - 1]
    "#{month_name} #{@year}".center(20).rstrip
  end

  def formatted_days
    # format the days with proper line breaks
    # need the right number of days
    # which day of the week does it start on?
    result = ""
    first_day_position.times do
      result << "   "
    end
    result << " 1"
  end

  def month_length
    Date.civil(@year, @month, -1).day
  end

  def first_day_position #Zeller's Congruence
    Date.new(@year, @month, 1).wday
  end
end
