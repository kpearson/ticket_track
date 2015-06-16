class BoardController < ApplicationController
  def index
    @boards =  Board.all
  end

  def new
    @board  = Board.new
  end

  def create
  end

  def show
    @board = Board.find(params[:id])
  end
end

