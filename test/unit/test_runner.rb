require File.expand_path(File.dirname(__FILE__) + '/test_helper')

require 'liken/runner'

class TestRunner < Test::Unit::TestCase

    def setup
      @runner = Liken::Runner.new
    end

    def test_get_value
        assert_equal(3, @runner.get_value)
    end

end

