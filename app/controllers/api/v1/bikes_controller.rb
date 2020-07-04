require 'services/infra/logger'
require 'use_cases/bikes/find_bike'

module Api
  module V1
    class BikesController < ApplicationController

      def show                
        find_bike_use_case = UseCases::Bikes::FindBike.new        

        find_bike_use_case.on(:find_bike_success) { |bike| render json: bike, status: :ok }
        find_bike_use_case.on(:find_bike_fail)    { head :not_found }
        
        find_bike_use_case.call(bike_id)
      end

      private

      def permitted_params
       params.permit(
          :bike_id,
          :staion_id,
          :user_id
       ) 
      end
      
      def bike_id
        permitted_params[:bike_id]
      end

    end
  end
end
