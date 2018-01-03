# frozen_string_literal: true

# Controller for the home page
class HomeController < ApplicationController
  def index;
    pins = Pin.all.sample 24
    boards = Board.all.sample 24
    @data = { pins: pins, boards: boards }
  end
end
