class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  def index
    @plays = Play.all
  end

  def new
    @play = Play.new(game_id: params[:game_id])
    @game = Game.find(params[:game_id])
  end

  def show
    @game = Game.find(@play.game_id)
  end

  def create
    @play = Play.new(play_params)
    # @play.user_id = current_user.id
    if @play.save
      redirect_to play_path(@play)
    else
      render :new
    end
  end

  def edit
    if @play.user_id == current_user
      set_play
    else
      redirect_to play_path
    end
  end

  def update
    if @play.user_id == current_user && @play.update_attributes(play_params)
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
    params.require(:play).permit(:game_id, :user_id, :location, :comments,  :date, :duration, :score)
  end

  def set_play
    @play = Play.find(params[:id])
  end


end
