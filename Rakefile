require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rack'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/api/*_spec.rb']
end

task :default => :spec
task :test => :spec

task :environment do
  ENV["RACK_ENV"] ||= 'development'
  require File.expand_path("../config/environment", __FILE__)
end

desc "API Routes"
task routes: :environment do
  EasyPaint::API.routes.each do |api|
    method = api.route_method.ljust(10)
    path = api.route_path
    puts "     #{method} #{path}"
  end
end