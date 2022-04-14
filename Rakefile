# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require_relative "lib/network_connector/version"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

GEM_NAME = "network_connector"
GEM_VERSION = NetworkConnector::VERSION

# task :default => :build

task :build do
  system "gem build " + GEM_NAME + ".gemspec"
end

task :install => :build do
  system "gem install " + GEM_NAME + "-" + GEM_VERSION + ".gem"
end

task :publish => :build do
  system 'gem push ' + GEM_NAME + "-" + GEM_VERSION + ".gem"
end

task :clean do
  system "rm *.gem"
end