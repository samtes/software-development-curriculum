require File.expand_path("../test_helper", __FILE__)
require 'stringio'
require 'my_app'

class InputFaker
  def initialize(strings)
    @strings = strings
  end

  def gets
    next_string = @strings.shift
    # Uncomment the following line if you'd like to see the faked $stdin#gets
    # puts "(DEBUG) Faking #gets with: #{next_string}"
    next_string
  end

  def self.with_fake_input(strings)
    $stdin = new(strings)
    yield
  ensure
    $stdin = STDIN
  end
end

class CliTest < Test::Unit::TestCase
  def test_cli
    InputFaker.with_fake_input(["Julie","Bob"]) do
      stdout = StringIO.new()
      my_app = MyApp.new([], stdout)
      my_app.run
      results = stdout.string.split("\n")
      assert_equal( "Welcome!", results[0] )
      assert_equal( "Welcome, Julie", results[1] )
      assert_equal( "Welcome, Bob", results[2] )
    end
  end
end
