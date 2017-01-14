class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def update
    @game = game.find(game_params)
    if @game.update_attributes(params.require(:game).permit(:name, :year, :designer, :publisher, :max_players, :image))
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def edit
  end

  def update
    @game = Game.find(set_game)
      if @game.update_attributes(game_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(set_game)
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
