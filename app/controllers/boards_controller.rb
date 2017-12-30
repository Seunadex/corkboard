# frozen_string_literal: true

# Boards Controller
class BoardsController < ApplicationController
  before_action :set_board, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update delete]

  def index
    @boards = Board.all
  end

  def show; end

  def new
    @board = current_user.boards.build
  end

  def edit; end

  def create
    @board = current_user.boards.build board_params

    if @board.save
      redirect_to @board, notice: 'Board was successfully created.'
    else
      render :new
    end
  end

  def update
    if @board.update board_params
      redirect_to @board, notice: 'Board was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_url, notice: 'Board was successfully destroyed.'
  end

  private
    def set_board
      @board = Board.find params[:id]
    end

    def correct_user
      @board = current_user.boards.find_by id: params[:id]
      if @board.nil?
        redirect_to boards_path, alert: "You cannot edit someone else's board."
      end
    end

    def board_params
      params.require(:board).permit :name, :description
    end
end
