require_relative 'test_helper'

class TestOneYear < CalTest
  def test_one_year
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 2012`
    assert_similar `cal 2012`, output
  end
end
