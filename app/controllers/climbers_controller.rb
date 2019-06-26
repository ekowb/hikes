class ClimbersController < ApplicationController

    def index
        @climbers = Climber.all
        render :index
    end

    def create
        @climber = Climber.create(climber_params)
        if @climber.valid?
            redirect_to("/climbers")
        else
            flash[:error] = @climber.errors.full_messages
            render :new
        end
    end

    def new
        @climber = Climber.new
        render :new
    end

    def show
        @climber = Climber.find(params[:id])
        @mountains = Mountain.all
        render :show
    end

    def edit
        @climber = Climber.find(params[:id])
        render :edit
    end

    def update
        @climber = Climber.find(params[:id])
        @climber.update(climber_params)
        if @climber.valid?
            redirect_to("/climbers/#{@climber.id}")
        else
            flash[:error] = @climber.errors.full_messages
            render :edit
        end
    end

    private

    def climber_params
        params.require(:climber).permit(:name, :age, :country, :mountain_id)
    end
        
end