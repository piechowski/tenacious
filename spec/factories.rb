FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    name 'Test Testerson'
    password 'ruby-rocks'
    password_confirmation 'ruby-rocks'
  end

  factory :admin, class: User do
    email 'test@test.com'
    name 'Test Testerson'
    password 'ruby-rocks'
    password_confirmation 'ruby-rocks'
    admin true
  end
end