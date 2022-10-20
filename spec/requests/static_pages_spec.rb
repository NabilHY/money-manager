require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /splash_page' do
    before(:each) {get static_pages_splash_page_path}

    it 'is a success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the splash_page template' do
      expect(response).to render_template('splash_page')
    end

    it 'has the correct placeholder text' do
      expect(response.body).to include('Money Manager')
    end
  end

end
