class RoomsController < ApplicationController
skip_before_action :authenticate_user!

    def index
      @rooms = Room.all
    end

    def show
      @room = Room.find(params[:id])
    end

    def new
      @room = Room.new
    end

    def create
      @room = Room.new(room_params)
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
