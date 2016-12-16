FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    name 'Test Testerson'
    password 'ruby-rocks'
    password_confirmation 'ruby-rocks'
  end
end