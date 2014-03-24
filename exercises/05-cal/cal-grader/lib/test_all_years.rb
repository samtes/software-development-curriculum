require_relative 'test_helper'

class TestAllYears < CalTest
  def test_all_years
    directory = ARGV[0]
    (1800..3000).each do |year|
      output = `cd #{directory}; ruby cal.rb #{year}`
      assert_similar `cal #{year}`, output, message: "Failed at #{year}"
    end
  end
end

