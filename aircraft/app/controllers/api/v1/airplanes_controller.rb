module Api
  module V1
   class AirplanesController < ApplicationController
     before_action :find_airplane, only: [:show, :update, :destroy]
    def index
    @airplanes = Airplane.all
    render json: @airplanes
    end
    def show
      render json:@airplane
    end
    def update
      @airplane.update(airplane_params)
      render json: @airplane
    end
    def create
      @airplane = Airplane.create(airplane_params)
      render json: @airplane
    end
    def destroy
      @airplane = Airplane.all
      @airplane.destroy
      render json: @airplane
    end

    private
    def find_airplane
      @airplane = Airplane.find(params [:id])
    end
    def airplane_params
       params.permit(:manufacture, :name, :family, :range, :typical_seating, :overall_length, :height, :wing_span, :img_length, :img_height, :img_wing_span)
    end
  end
 end
end
