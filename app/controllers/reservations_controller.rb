class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
  end

  def update
  end

  private

    def reservation_params
    end

end
