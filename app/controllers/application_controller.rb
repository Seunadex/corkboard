# frozen_string_literal: true

# Parent class for all application controllers
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
