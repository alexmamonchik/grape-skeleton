require 'rubygems'
require 'bundler/setup'

Bundler.require :default, ENV['RACK_ENV']

Dir[File.expand_path('../../api/*.rb', __FILE__)].each do |f|
  require f
end

require File.expand_path('../../app', __FILE__)

puts "environment: #{ENV['RACK_ENV']}"