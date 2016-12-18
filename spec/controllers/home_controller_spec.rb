require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  context 'when logged in' do
    before do
      login_user
    end

    it do
      get :index
      expect(response).to have_http_status 200
    end
  end

  context 'when logged out' do
    it do
      get :index
      expect(response).to have_http_status 302
    end
  end

end
