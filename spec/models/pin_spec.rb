# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pin, type: :model do
  it 'is valid with a description' do
    pin = Pin.new description: 'Description'
    expect(pin).to be_valid
  end
end
