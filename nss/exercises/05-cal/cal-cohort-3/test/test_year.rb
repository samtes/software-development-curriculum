require "minitest/autorun"
require_relative "../lib/year"

class TestYear < MiniTest::Unit::TestCase

  def test_is_leap_year_regular
    assert !Year.is_leap_year?(2013)
  end

  def test_is_leap_year_leapyear
    assert Year.is_leap_year?(2012)
  end

  def test_is_leap_year_another_leapyear
    assert Year.is_leap_year?(2016)
  end

  def test_is_leap_year_century_leapyear
    assert !Year.is_leap_year?(1900)
  end

  def test_is_leap_year_quadcentury_leapyear
    assert Year.is_leap_year?(1600)
  end
end
