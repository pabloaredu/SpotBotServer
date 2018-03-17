class MainController < ApplicationController

  def index
    @arr_pa_and_slots = Array.new
    data = Hash.new
    @parking_areas = ParkingArea.all # get all the parking areas

    @parking_areas.each do |parking_area|
      @spots = parking_area.spots
      hash = {
        :parking_area => parking_area,
        :spots => @spots
      }
      @arr_pa_and_slots.push(hash)
    end
    render :json => {:parking_areas => @arr_pa_and_slots}
  end
end

