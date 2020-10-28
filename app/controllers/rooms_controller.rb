class RoomsController < ApplicationController
 def new
  @room = Room.new
 end

 def create
  if @room.save
    redirect_to root_path
  else
    render :new
  end

    private

    def room_params
      params.require(:room).permit(:name, user_ids: [])
 end
end
