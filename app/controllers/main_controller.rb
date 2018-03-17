class MainController < ApplicationController

  def index
    arr_pa_and_spots = []
    @parking_areas = ParkingArea.all
    @parking_areas.each do |parking_area|
      puts parking_area.id
      spots = Spot.where(:parking_area_id => parking_area[:id])
      parking_area['spots'] = spots

      arr_pa_and_spots.push(parking_area)
    end
    render :json => {:parking_areas => arr_pa_and_spots}
  end
end

