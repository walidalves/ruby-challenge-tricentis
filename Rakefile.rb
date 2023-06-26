require 'cucumber'
require 'cucumber/rake/task'
require 'rubocop/rake_task'

desc 'Execute complete e2e Form Tests'
task :e2e do
  sh 'bundle exec cucumber -t @e2e'
end

desc 'Execute Regression Form Tests'
task :regression do
  sh 'bundle exec cucumber -t @regression'
end

desc 'Execute Smoke Tests'
task :smoke_test do
  sh 'bundle exec cucumber -t @smoke_test'
end

desc 'Execute Automobile Form Tests'
task :automobile do
  sh 'bundle exec cucumber -t @automobile'
end

desc 'Execute Truck Form Tests'
task :truck do
  sh 'bundle exec cucumber -t @truck'
end

desc 'Execute Motorcycle Form Tests'
task :motorcycle do
  sh 'bundle exec cucumber -t @motorcycle'
end

desc 'Execute Camper Form Tests'
task :camper do
  sh 'bundle exec cucumber -t @camper'
end

desc 'Execute Contract Tests'
task :contract do
  sh 'bundle exec cucumber -t @contract'
end
