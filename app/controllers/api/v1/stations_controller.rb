require 'use_cases/stations/generate_unlock_password'

module Api
  module V1
    class StationsController < ApplicationController

      def generate_password
        password_use_case = UseCases::Stations::GenerateUnlockPassword.new
        presenter = Presenters::Stations::GeneratePasswordPresenter.new

        password_use_case.on(:generate_password_success) { |password| presenter.success(password: password) }

        password_use_case.on(:generate_password_forbidden,
                              :generate_password_invalid_user,
                              :generate_password_invalid_station) { presenter.forbidden }

        password_use_case.on(:generate_password_fail) { presenter.error }

        password_use_case.call(user_id, station_id)
        render presenter.response
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
