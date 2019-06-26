class MountainsController < ApplicationController

    def index
        @mountains = Mountain.all
        render :index
    end

    def show
        @mountain = Mountain.find(params[:id])
        render :show
    end


    private

    def mountain_params
        params.require(:mountain).permit(:name, :height, :location, climbers:[])
    end
end