class LandingsController < ApplicationController

  def index
    @landings = Landing.all
  end

  def show
    @landing = Landing.find(params[:id])
  end


end
