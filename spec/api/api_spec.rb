require 'spec_helper'

describe MyApp::API do
  include Rack::Test::Methods

  def app
    MyApp::API
  end

  describe 'GET /api/v1/' do
    it 'available' do
      get '/api/v1'
      expect(last_response.status).to eq(200)
    end
  end
end