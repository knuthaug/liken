require 'rubygems'
require 'cucumber/rake/task'
require 'spec/rake/spectask'

task :default => [:examples, :features] do

end


desc "Run all"
task :test => [:examples, :features]do

end

desc "Run all examples"
Spec::Rake::SpecTask.new('examples') do |t|
  t.spec_files = FileList['test/**/*.rb']
end


desc "Run all cucumber features"
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end
