class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  # checking users logged in
  before_action :authorize

  def index
    @games = Game.all
    @play = Play.new(game_id: params[:game_id])
  end

  def new
    @game = Game.new
  end

  def show
    @plays = @game.plays
    p "*" * 50
    p @plays
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update_attributes(game_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to root_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :year, :designer, :publisher, :max_players, :image)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
