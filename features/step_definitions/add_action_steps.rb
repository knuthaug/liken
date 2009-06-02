# encoding: utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')

require 'cucumber/formatter/unicode'
require 'liken/actions/action_list'
require 'liken/actions/action'

require 'test/unit/assertions'

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
  assert_equal(1, @action_list.size)
end
