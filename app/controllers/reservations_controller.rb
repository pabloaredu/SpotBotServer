class ReservationsController < ApplicationController

  def create

    spot = Spot.find_by(id: params[:spot_id])

    reservation = spot.reservations.new(reservation_params)
    reservation.user_id = 1

    if reservation.save!
      spot.update(availability: false)
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

  def update
  end

  private

    def reservation_params
      params.require(:reservation).permit(:reservation_status)
    end

end
