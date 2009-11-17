require 'rubygems'
require 'cucumber/rake/task'


desc "Run all unit tests"
task :unittest do
  require 'rake/runtest'
  Rake.run_tests 'test/unit/test_*.rb'
end

desc "Run all cucumber features"
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end
