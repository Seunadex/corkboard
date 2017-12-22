# frozen_string_literal: true

# Controller class for the Pin model
class PinsController < ApplicationController
  before_action :set_pin, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update destroy]

  def index
    @pins = Pin.all
  end

  def show; end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build pin_params

    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @pin.update pin_params
      redirect_to @pin, notice: 'Pin was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pin.destroy
    redirect_to pins_path, notice: 'Pin was successfully deleted.'
  end

  private

  def set_pin
    @pin = Pin.find params[:id]
  end

  def pin_params
    params.require(:pin).permit :description, :thumbnail
  end

  def correct_user
    @pin = current_user.pins.find_by id: params[:id]
    redirect_to pins_path, alert: "You cannot edit someone else's pin." if @pin.nil?
  end
end
