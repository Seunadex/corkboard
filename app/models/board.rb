# frozen_string_literal: true

# Board Class
class Board < ApplicationRecord
  validates_presence_of :name, :description

  belongs_to :user
  has_and_belongs_to_many :pins
end
