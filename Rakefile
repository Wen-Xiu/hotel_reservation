require 'rspec/core'
require 'rspec/core/rake_task'
require_relative 'env'
task default: [:spec]

RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = FileList['spec/lib/*_spec.rb']
end

desc "Run hotel reservation system"
task :run do
  Processor.process
end
