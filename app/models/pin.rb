# frozen_string_literal: true

# Pin Class
class Pin < ApplicationRecord
  validates_presence_of :description

  belongs_to :user
end
