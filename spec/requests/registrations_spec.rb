require 'rails_helper'

RSpec.describe 'Registrations', type: :request do
  describe 'GET /index' do
    before(:each) { get new_user_session_path }
    it 'is a success' do
      expect(response).to have_http_status(:success)
    end
    it 'renders the new template' do
      expect(response).to render_template('new')
    end
    it 'has the correct placeholder text' do
      expect(response.body).to include('Log in')
      expect(response.body).to include('Sign up')
    end
  end
end
