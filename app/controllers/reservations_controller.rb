class ReservationsController < ApplicationController

  def create
    spot = Spot.find_by(id: params[:spot_id])

    reservation = spot.reservations.new(reservation_params)
    reservation.user_id = 1

    if reservation.save!
      spot.update(availability: false)
    render json: reservation
    end

  end

  def update
  end

  private

    def reservation_params
      params.require(:reservation).permit(:reservation_status)
    end


end
