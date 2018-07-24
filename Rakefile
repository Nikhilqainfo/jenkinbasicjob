require 'cucumber'
require 'cucumber/rake/task'
require './task/runcucumber'
task :default => [:runcucumber]

task :runcucumber do
  object=Runcucumber.new
  object.runfeaturefile(".\/features\/login.feature")
end
