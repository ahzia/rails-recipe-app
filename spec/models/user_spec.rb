require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a name' do
    user = User.create(name: 'John')
    expect(user.name).to eq('John')
  end

  it 'has an email' do
    user = User.create(email: 'bob@gmail.com')
    expect(user.email).to eq('bob@gmail.com')
  end

  it 'has a password' do
    user = User.create(password: 'password')
    expect(user.password).to eq('password')
  end

  it 'has a password_confirmation' do
    user = User.create(password_confirmation: 'password')
    expect(user.password_confirmation).to eq('password')
  end
end
