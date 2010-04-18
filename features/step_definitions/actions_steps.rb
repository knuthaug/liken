# encoding: utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')

require 'cucumber/formatter/unicode'
require 'liken/actions/action_list'
require 'liken/actions/action'

World(Test::Unit::Assertions)
include Liken::Actions

Given /^an empty list of actions$/ do
  @action_list = ActionList.new
end

When /^I add an new action$/ do
  @action = Action.new("test")
  @action_list.add(@action)
end

Then /^the size of the list should be (\d+)$/ do |num|
  @action_list.size.should == 1
end

Given /^a previously stored list$/ do
  @action_list = ActionList.new
  @action_list.read
end

When /^I list the actions$/ do
  @action_list
end

Then /^the action retrieved is the same as stored$/ do
  @action_list.get("test").name.should == 'test'
end
