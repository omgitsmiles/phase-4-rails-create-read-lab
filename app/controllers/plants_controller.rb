class PlantsController < ApplicationController

    def index
        render json: Plant.all, status: 200
    end

    def show
        plant =  Plant.find(params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: 201
    end

end
