require File.expand_path(File.dirname(__FILE__) + '/test_helper')
require 'foo'

class TestFirst < Test::Unit::TestCase

  def setup
    @foo = Foo.new("test")
  end
  
  def test_neste
    assert_equal("test", @foo.get_string)
  end
  
end
