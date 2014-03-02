require_relative 'test_helper'

class TestMoreMonths < CalTest

  def test_02_2012
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 02 2012`
    assert_similar `cal 02 2012`, output
  end

  def test_01_2012
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 01 2012`
    assert_similar `cal 01 2012`, output
  end

  def test_09_2012
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 09 2012`
    assert_similar `cal 09 2012`, output
  end

  def test_02_2015
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 01 2015`
    assert_similar `cal 01 2015`, output
  end

  def test_02_1900
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 02 1900`
    assert_similar `cal 02 1900`, output
  end
end
