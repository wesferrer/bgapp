class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params.require(:game).permit(:name, :year, :designer, :publisher, :max_players))
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  def edit
      @game = Game.find(params[:id])
  end

  def destroy
    @game = Game.find(params[:id])
    @Game.destroy if @Game.user == current_user
    redirect_to game_path
  end

end
