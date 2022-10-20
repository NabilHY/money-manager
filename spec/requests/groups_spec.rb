require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get '/groups/show'
      expect(response).to have_http_status(:success)
    end
  end
end
