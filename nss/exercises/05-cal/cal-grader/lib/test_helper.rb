require 'minitest/autorun'

class CalTest < MiniTest::Unit::TestCase
  def assert_similar expected, actual, opts = {}
    assert_equal clean_string(expected), clean_string(actual), opts
  end

  def clean_string string
    string.split("\n").map(&:rstrip).map{ |string| (string.empty?)? nil : string }.compact.map{ |string| string.gsub(/\s+(\d{4})/, "\1")}.join("\n")
  end
end
