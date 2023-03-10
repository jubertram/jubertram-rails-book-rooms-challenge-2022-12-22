class BookingsController < ApplicationController
  before_action :set_room, only: %i[new create]

  def index
    @bookings = current_user.bookings
    @rooms = Room.all
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @rooms = Room.all
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @booking.user = current_user
    @booking.room = @room

    if @booking.save
      redirect_to room_path(@room), notice: "La chambre est bien réservée"
    else
      render 'rooms/show', status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end

  def set_room
    @room = Room.find(params[:room_id])
  end
end
