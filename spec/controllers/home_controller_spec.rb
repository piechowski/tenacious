require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe 'GET #index' do
    it 'redirects unauthenticated user to login page' do
      get :index
      response.should redirect_to '/users/sign_in'
    end
  end

end
