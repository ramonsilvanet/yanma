require 'services/password'

module UseCases
  module Stations
    class GenerateUnlockPassword
      include Wisper::Publisher
      include Services::Infra::Logger

      def initialize(station_repository: Repositories::RepositoryRegistry.for(:stations),
                      user_repository: Repositories::RepositoryRegistry.for(:users),
                      unlock_password_repository: Repositories::RepositoryRegistry.for(:unlock_passwords))
        @station_repository = station_repository
        @user_repository = user_repository
        @unlock_password_repository = unlock_password_repository
      end

      def call(user_id, station_id)
        return forbidden if invalid_user?(user_id)

        return forbidden if invalid_station?(station_id)

        return forbidden unless can_generate_new_password?(user_id)

        generated_password = save_password(user_id, station_id, Services::Password.generate_password)
        broadcast(:generate_password_success, generated_password)

      rescue => exception
        warn("Error when generate password. #{exception}")
        broadcast(:generate_password_fail)
      end

      private

      def invalid_user?(user_id)
        user = @user_repository.find_user_by(id: user_id)
        user.nil?
      end

      def invalid_station?(station_id)
        station = @station_repository.find_station_by(id: station_id)
        station.nil?
      end

      def save_password(user_id, station_id, password)
        @unlock_password_repository.save_unlock_password(user_id, station_id, password)
        password
      end

      def can_generate_new_password?(user_id)
        last_password = @user_repository.find_last_password_for_user(user_id)

        return true if last_password.nil?

        last_password.expired?
      end

      def forbidden
        broadcast(:generate_password_forbidden)
      end
    end
  end
end
