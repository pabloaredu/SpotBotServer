class SpotsController < ApplicationController

  def index




    if params[:accessibility] == 'yes'
      puts 'Something happend *******************************'
      @spots = Spot.where(accessible: true, occupied: false)
      render :index
    else params[:accessibility] == 'no'
      @spots = Spot.where(accessible: false, occupied: false)
      render :index
    end
  end


end
