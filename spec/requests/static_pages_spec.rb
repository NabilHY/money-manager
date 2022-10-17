require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /splash_page' do
    it 'returns http success' do
      get '/static_pages/splash_page'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /dashboard' do
    it 'returns http success' do
      get '/static_pages/dashboard'
      expect(response).to have_http_status(:success)
    end
  end
end
