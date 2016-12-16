require 'rails_helper'

RSpec.describe User, type: :model do
  it 'adds a user' do
    user = User.new(email: 'test@test.com', name: 'Test Testerson', password: 'ruby-rocks')
    expect(user.save).to eq(true)
  end

  it 'does not add a user without an email' do
    user = User.new(name: 'Test Testerson', password: 'ruby-rocks')
    expect(user.save).to eq(false)
  end

  it 'does not add a user without a name' do
    user = User.new(email: 'test@test.com', password: 'ruby-rocks')
    expect(user.save).to eq(false)
  end
end
