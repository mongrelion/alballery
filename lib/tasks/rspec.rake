begin
  require 'rspec/core/rake_task'
  desc "Run specs"
  RSpec::Core::RakeTask.new :spec
  task :default => :spec
rescue LoadError
  desc 'spec rake task not available (rspec not installed)'
  task :spec do
    abort 'RSpec rake task is not available. Be sure to install rspec as a gem or plugin'
  end
end
