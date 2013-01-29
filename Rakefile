require "bundler/gem_tasks"

# clear default release task
Rake::Task["release"].clear

require 'rake/clean'

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end
