require "minitest/autorun"
require_relative "../lib/zellers_congruence"

class TestZellersCongruence < MiniTest::Unit::TestCase

  def test_modified_month_january
    assert_equal 13, ZellersCongruence.modified_month(2012, 01)
  end

  def test_modified_month_february
    assert_equal 14, ZellersCongruence.modified_month(2012, 02)
  end

  def test_modified_month_march
    assert_equal 3, ZellersCongruence.modified_month(2012, 03)
  end

  def test_modified_year_january
    assert_equal 1999, ZellersCongruence.modified_year(2000, 01)
  end

  def test_modified_year_february
    assert_equal 2011, ZellersCongruence.modified_year(2012, 02)
  end

  def test_modified_year_march
    assert_equal 1805, ZellersCongruence.modified_year(1805, 03)
  end

  def test_calculate_2014_03_02
    assert_equal 1, ZellersCongruence.calculate(2014, 03, 02)
  end

  def test_calculate_2012_01_01
    assert_equal 1, ZellersCongruence.calculate(2012, 01, 01)
  end

  def test_calculate_2012_01_12
    assert_equal 5, ZellersCongruence.calculate(2012, 01, 12)
  end

  def test_calculate_1799_02_01
    assert_equal 6, ZellersCongruence.calculate(1799, 02, 01)
  end

  def test_calculate_2000_11_01
    assert_equal 4, ZellersCongruence.calculate(2000, 11, 01)
  end
end
