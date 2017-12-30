require 'rails_helper'

RSpec.describe Board, type: :model do
  it 'is valid with a name' do
    board = Board.new name: 'Board'
    expect(board).to be_valid
  end
end
