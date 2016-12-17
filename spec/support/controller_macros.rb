module ControllerMacros
  def login_user
    @request.env['devise.mapping'] = Devise.mappings[:user]
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  def login_admin
    @request.env['devise.mapping'] = Devise.mappings[:user]
    @user = FactoryGirl.create(:admin)
    sign_in @user
  end
end