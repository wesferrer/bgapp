class LandingsController < ApplicationController

  def index
    @landings = Landing.all
  end

end
