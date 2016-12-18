require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do
  context 'when logged in as admin' do
    before do
      login_admin
    end

    it do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  context 'when logged in as normal user' do
    before do
      login_user
    end

    it do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  context 'when logged out' do
    it do
      get :index
      expect(response).to have_http_status(302)
    end
  end
end
