require 'test/unit'
require 'calendar'

class CalendarTest < Test::Unit::TestCase
  def test_nothing
    expected = <<EOS
     June 2014
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    calendar = Calendar.new(6, 2014)
    assert_equal(expected, calendar.format_calendar)
  end

  def test_nothing_2
    expected = <<EOS
   February 2014
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28

EOS
    calendar = Calendar.new(2, 2014)
    assert_equal(expected, calendar.format_calendar)
  end

  def test_nothing_3
    expected = <<EOS
    January 2000
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    calendar = Calendar.new(1, 2000)
    assert_equal(expected, calendar.format_calendar)
  end
end
