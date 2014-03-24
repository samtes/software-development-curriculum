require_relative 'test_helper'

class TestOneMonth < CalTest
  def test_one_month
    directory = ARGV[0]
    output = `cd #{directory}; ruby cal.rb 02 2012`
    assert_similar `cal 02 2012`, output
  end
end
