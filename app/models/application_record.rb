# frozen_string_literal: true

# Base class for all Application Models
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
