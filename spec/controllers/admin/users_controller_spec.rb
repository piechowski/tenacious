require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do
  describe 'GET #index (not logged in)' do
    it 'redirects unauthenticated user' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #index (not admin)' do
    before do
      login_user
    end

    it 'redirects non-admin user' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #index (admin)' do
    before do
      login_admin
    end

    it 'allows admin in' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
