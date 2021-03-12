class HotelsController < ApplicationController

  def index
    if params[:query].present?
      @hotels = Hotel.where("city ILIKE ?","%#{params[:query]}%")
      @date = params[:arrival_date]
    else
      @hotels = Hotel.all
    end
   end

  def show
    @hotel = Hotel.new
  end

end
