require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe 'GET #index (unauthenticated)' do
    it 'redirects unauthenticated user' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #index (unauthenticated)' do
    before do
      login_user
    end

    it 'allows authenticated users to home#index' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
