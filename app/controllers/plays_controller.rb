class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def show
  end

  def create
    @play = Play.new
    if @play.save
      redirect_to play_path(@play)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @play.update_attributes(play_params)
      redirect_to play_path(@play)
    else
      render :edit
    end
  end

  def destroy
    @play.destroy
    redirect_to root_path
  end

  private
  def play_params
  end

  def set_play
    @play = Play.find(params[:id])
  end


end
