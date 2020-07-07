require 'use_cases/stations/generate_unlock_password'

module Api
  module V1
    class StationsController < ApplicationController

      def generate_password
        password_use_case = UseCases::Stations::GenerateUnlockPassword.new

        password_use_case.on(:generate_password_success)   { |password| render json: {password: password}, status: :ok }
        password_use_case.on(:generate_password_forbidden) { head :forbidden }
        password_use_case.on(:generate_password_fail)      { head :internal_server_error }

        password_use_case.call(user_id, station_id)
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
