module Api
  module V1
    class StationsController < ApplicationController

      def generate_password
        password_service = Stations::GenerateUnlockPassword.new(station_id, user_id)
        
        find_bike.on(:generate_password_success) { |bike| render json: { bike_id: bike }, status: :ok }
        find_bike.on(:generate_password_forbidden)    { head :forbidden }
        find_bike.on(:generate_password_fail)    { head :unprocessable_entity }

        password_service.call
      end

      private

      def permitted_params
        params.permit(
          :station_id,
          :user_id
        )
      end

      def station_id
        permitted_params[:station_id]
      end

      def user_id
        permitted_params[:user_id]
      end

    end
  end
end
