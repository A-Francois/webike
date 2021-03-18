class ChatroomsController < ApplicationController
  def create
    @ride = Ride.find(params[:ride_id])
    @chatroom = Chatroom.find_by(name:@ride.title)
    if @chatroom
      redirect_to ride_chatroom_path(@ride, @chatroom)
    else
      @chatroom = Chatroom.create(name: @ride.title, ride: @ride)
      redirect_to ride_chatroom_path(@ride, @chatroom)
    end
  end
  def show
    @ride = Ride.find(params[:ride_id])
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
