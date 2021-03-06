class HotelsController < ApplicationController

  def index
    if params[:query].present?
      @hotels = Hotel.where("city ILIKE ?","%#{params[:query]}%")
      @date = params[:arrival_date]
      @participant = Participant.find(params[:participant_id])
    else
      @hotels = Hotel.all
    end
   end

  def show
    @hotel = Hotel.new
  end

end
