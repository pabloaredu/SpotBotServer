class SpotsController < ApplicationController

  def index
    if params[:accessibility] == 'yes'
      puts 'Something happend *******************************'
      @spots = Spot.where(accessible: true, availability: false)
      render :index
    else params[:accessibility] == 'no'
      @spots = Spot.where(accessible: false, availability: false)

    end
  end

  def update
    @spot = Spot.find(params[:id])
  end

  def reserve

    @reserved_spot = Spot.find(:id)

  end

end
