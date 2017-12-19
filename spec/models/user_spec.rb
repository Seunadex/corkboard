# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with an email and password' do
    user = User.new email: 'test@xample.com', password: 'lamepassword'
    expect(user).to be_valid
  end
end
