class MainController < ApplicationController
  def index

    @parking_areas = ParkingArea.all
    @spots = Spot.all
  end
end
