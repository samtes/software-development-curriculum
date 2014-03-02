require 'test/unit'
require 'calendar'

class CalendarUnitTest < Test::Unit::TestCase
  def test_month_header_february
    expected = "   February 2014"
    actual = Calendar.new(2, 2014).month_header
    assert_equal( expected, actual )
  end
  def test_month_header_june
    expected = "     June 1905"
    actual = Calendar.new(6, 1905).month_header
    assert_equal( expected, actual )
  end

  def test_month_length_non_leap_feb
    assert_equal( 28, Calendar.new(2, 2013).month_length )
  end

  def test_month_length_leap_feb
    assert_equal( 29, Calendar.new(2, 2012).month_length )
  end

  def test_month_length_sept
    assert_equal( 30, Calendar.new(9, 2012).month_length )
  end

  def test_month_length_december
    assert_equal( 31, Calendar.new(12, 2012).month_length )
  end

  def test_first_day_of_month_05_2013
    assert_equal( 3, Calendar.new(5, 2013).first_day_position )
  end

  def test_first_day_of_month_9_2013
    assert_equal( 0, Calendar.new(9, 2013).first_day_position )
  end

  def test_first_day_of_month_12_2012
    assert_equal( 6, Calendar.new(12, 2012).first_day_position )
  end

  def test_formatted_days_starts_with_correct_spaces
    actual = Calendar.new(2, 2013).formatted_days
    should_start_with = "                1"
    assert (actual.start_with? should_start_with), "Output was \"#{actual}\" #{actual.size} characters long and should have been \"#{should_start_with}\" #{should_start_with.size}"
  end
end
