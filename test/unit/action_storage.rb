require File.expand_path(File.dirname(__FILE__) + '/test_helper')

require 'liken/actions/action_list'
require 'liken/actions/action'

class ActionStorage < Test::Unit::TestCase

    def setup
      @action_list = Liken::Actions::ActionList.new
    end

    def test_adding_an_action_to_the_list_stores_it
      @action_list.add Liken::Actions::Action.new("test") ;
      @action_list.size.should == 1
      @action_list.get("test").name.should == "test"
    end

    def test_retrieving_stored_action_matches_name
      @action_list.get("test").name.should == "test"
    end

end

