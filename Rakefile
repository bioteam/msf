# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "msf"
  gem.homepage = "http://github.com/vanetten/msf"
  gem.license = "MIT"
  gem.summary = "ActiveRecord access to MSF file (sqlite3 database)."
  gem.description = "An MSF file is sqlite3 dtabase. ActiveRecord is a great ORM for accessing the data. Much taken from Angel Pizarro's thermo_msf."
  gem.email = "bill@bioteam.net"
  gem.authors = ["William Van Etten"]
  gem.files.include 'bin/ibspectra'
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
