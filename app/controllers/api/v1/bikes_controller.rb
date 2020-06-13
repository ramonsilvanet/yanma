module Api
  module V1
    class BikesController < ApplicationController

      def show
        head :not_found
      end

      def unlock
        head :ok
      end

      def lock
        head :unauthorized
      end

      def maintenance
      end

      private

      def permitted_params
       params.permit(
          :bike_id,
          :staion_id,
          :user_id
       ) 
      end
      
    end
  end
end
