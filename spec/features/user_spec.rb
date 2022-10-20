require 'rails_helper'
require 'spec_helper'

RSpec.describe 'Users', type: :feature do
    # sign up
    describe 'get /users/sign_up' do
        before(:each) do
            visit new_user_registration_path
        end
        it 'renders the sign up page' do
            expect(page).to have_content('Sign up')
        end

    end

    describe 'get /users/sign_in' do
        # login
        before(:each) do
            visit new_user_session_path
        end
        it 'renders the sign in page' do
            expect(page).to have_content('Log in')
        end
        it 'has a log in button rendered' do
            expect(page).to have_button('Log in')
        end

        it 'has a sign up link rendered' do
            expect(page).to have_link('Sign up')
        end

        it 'has a forgot password link rendered' do
            expect(page).to have_link('Forgot your password?')
        end

        it 'has a remember me checkbox rendered' do
            expect(page).to have_field('Remember me')
        end
    end
end