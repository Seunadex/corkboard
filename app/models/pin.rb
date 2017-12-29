# frozen_string_literal: true

# Pin Class
class Pin < ApplicationRecord
  content_types = ['image/jpeg', 'image/png', 'image/gif']

  has_attached_file :thumbnail

  validates_presence_of :description, :name, :url
  validates_attachment_content_type :thumbnail, content_type: content_types

  belongs_to :user
end
