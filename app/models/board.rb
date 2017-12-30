# frozen_string_literal: true

# Board Class
class Board < ApplicationRecord
  validates_presence_of :name

  belongs_to :user
end
