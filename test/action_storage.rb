require File.expand_path(File.dirname(__FILE__) + '/test_helper')

require 'liken/actions/action_list'
require 'liken/actions/action'

include Liken::Actions

class ActionStorage < Test::Unit::TestCase

    def setup
      @action_list = Liken::Actions::ActionList.new
    end

    def test_adding_an_action_to_the_list_stores_it
      @action_list.add Action.new("test") ;
      @action_list.size.should == 1
      @action_list.get("test").name.should == "test"
    end

    def test_deleting_action_clears_list
      @action_list.delete("test")
      @action_list.size.should == 0
    end

    def test_deleting_non_existant_item_returns_nil
      item = @action_list.delete("test")
      item.should == nil
    end

end

