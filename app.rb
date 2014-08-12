require 'grape'
require File.expand_path("../config/environment", __FILE__)

module MyApp
  class API < Grape::API
    version 'v1'
    prefix 'api'
    format :json

    get '/' do
    end

    mount MyApp::Jobs
  end
end