require 'rubygems'
# require 'appraisal'
require 'rake'

begin
  require 'rspec/core/rake_task'
  desc "Run RSpec"
  RSpec::Core::RakeTask.new do |t|
    t.verbose = false
  end
rescue LoadError
  puts "You should run rake spec:install in order to install all corresponding gems!"
end

task :travis do
  system("cd spec/dummy/ && rake db:migrate")
  raise "rake db:migrate failed!" unless $?.exitstatus == 0
  system("export DISPLAY=:99.0 && bundle exec rake db:migrate spec")
  raise "rake spec failed!" unless $?.exitstatus == 0
end

task :default => :spec
namespace :spec do
  task :install do
    puts `bundle install --gemfile=gemfiles/Gemfile.rails3_0`
    puts `bundle install --gemfile=gemfiles/Gemfile.rails3_1`
  end
  
  task :all do
    ENV['BUNDLE_GEMFILE'] = File.expand_path('../gemfiles/Gemfile.rails3_0', __FILE__)
    Rake::Task["spec"].execute
    
    ENV['BUNDLE_GEMFILE'] = File.expand_path('../gemfiles/Gemfile.rails3_1', __FILE__)
    Rake::Task["spec"].execute
  end
end