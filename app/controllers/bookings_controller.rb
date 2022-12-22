class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @booking.user = current_user
    @booking.room = @room

    if @booking.save
      redirect_to room_path(@room), notice: "La chambre est bien réservée"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
