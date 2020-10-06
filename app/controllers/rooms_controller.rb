class RoomsController < ApplicationController
skip_before_action :authenticate_user!

    def index
      @rooms = Room.all
      @room = Room.new
    end

    def show
      @room = Room.find(params[:id])
    end

    def new
      @room = Room.new
    end

    def edit
      @room = Room.find(params[:id])
    end

    def update
    @room = Room.find(params[:id])
    @room.update(room_params)
    redirect_to room_path(@room)
    end

    def create
      @room = Room.new(room_params)
      @room.save
    end

    def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to root_path
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:name, :adress, :website, :capacity)
    end

end
