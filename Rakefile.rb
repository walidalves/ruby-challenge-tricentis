require 'cucumber'
require 'cucumber/rake/task'

desc 'Execute Smoke Tests'
task :smoke_test do
  sh 'bundle exec cucumber -t @smoke_test'
end

desc 'Execute Form Tests'
task :formulario_e2e do
  sh 'bundle exec cucumber -t @formulario_e2e'
end
