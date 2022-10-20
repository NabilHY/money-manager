require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET /index' do
    before(:each) do
      get groups_path
    end

    it 'redirects to the sign in page' do
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
