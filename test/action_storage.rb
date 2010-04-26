require File.expand_path(File.dirname(__FILE__) + '/test_helper')

require 'liken/actions/action_list'
require 'liken/actions/action'
require 'rubygems'
require 'fakefs'

include Liken::Actions

class ActionStorage < Test::Unit::TestCase


    def setup
      @working_dir = "tmp"
      @action_list = Liken::Actions::ActionList.new @working_dir
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

    def test_adding_to_list_stores_list_on_disk
      @action_list.add Action.new "test2"
      File.file?(@working_dir << "/index.yml").should == true
    end

end

