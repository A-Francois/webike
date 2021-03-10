class BookingsController < ApplicationController
  be
  
  def index
    @bookings = Booking.where({ participant: })
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @participant = Participant.find(params[:participant_id])
    @booking.participant = @participant
    @booking.save
    redirect_to_participant_path, notice: 'Your booking is confirmed.'
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to_participant_path, notice: 'Your booking is cancelled.'
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date)
  end
end
