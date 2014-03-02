require_relative 'test_helper'

class TestAllMonths < CalTest
  def test_all_months
    directory = ARGV[0]
    (1800..3000).each do |year|
      (1..12).each do |month|
        output = `cd #{directory}; ruby cal.rb #{month} #{year}`
        assert_similar `cal #{month} #{year}`, output, message: "Failed at #{month} #{year}"
      end
    end
  end
end
