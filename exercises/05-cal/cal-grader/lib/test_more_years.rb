require_relative 'test_helper'

class TestMoreYears < CalTest

  def test_2012
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 2012`
    assert_similar `cal 2012`, output
  end

  def test_3000
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 3000`
    assert_similar `cal 3000`, output
  end

  def test_1800
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 1800`
    assert_similar `cal 1800`, output
  end

  def test_2015
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 2015`
    assert_similar `cal 2015`, output
  end

  def test_1900
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 1900`
    assert_similar `cal 1900`, output
  end
end
