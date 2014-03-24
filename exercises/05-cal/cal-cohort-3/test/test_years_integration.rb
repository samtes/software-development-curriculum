require "minitest/autorun"

class TestYearsIntegration < MiniTest::Unit::TestCase
  def test_1799
    output = `ruby cal.rb 1799`
    assert_equal "Argument must be for a date between the years 1800 and 3000\n", output
  end

  def test_3000
    output = `ruby cal.rb 3000`
    assert_equal "Argument must be for a date between the years 1800 and 3000\n", output
  end

  def test_poor_arguments
    output = `ruby cal.rb 99`
    assert_equal "Argument must be for a date between the years 1800 and 3000\n", output
  end

  def test_2015_first_lines
    output = `ruby cal.rb 2015`
    n = 17
    assert_equal `cal 2015`.split("\n")[n], output.split("\n")[n]
  end

  def test_2012
    output = `ruby cal.rb 2012`
    assert_equal `cal 2012`, output
  end

  def test_3000
    output = `ruby cal.rb 3000`
    assert_equal `cal 3000`, output
  end

  def test_1800
    output = `ruby cal.rb 1800`
    assert_equal `cal 1800`, output
  end

  def test_2015
    output = `ruby cal.rb 2015`
    assert_equal `cal 2015`, output
  end

  def test_1900
    output = `ruby cal.rb 1900`
    assert_equal `cal 1900`, output
  end
end
