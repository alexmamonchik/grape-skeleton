module MyApp
  class Jobs < Grape::API
    resource 'jobs' do
      get 'index' do
        {}
      end
    end
  end
end