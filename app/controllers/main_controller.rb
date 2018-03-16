class MainController < ApplicationController
  def index
    @parking_areas = ParkingArea.all
    @spots = Spot.all
  end
end


# Prerana's Main Controller

# class MainController < ApplicationController

#   def index
#     arr_pa_and_slots = []
#     data = Hash.new
#     @parking_areas = ParkingArea.all # get all the parking areas
#     @parking_areas.each do |parking_area|
#       @spots = parking_area.spots
#      data[:parking_area] = parking_area
#      data[:spots] = @spots
#      arr_pa_and_slots.push(data)
#     end
#     render :json => {:parking_areas => arr_pa_and_slots}
#   end
# end