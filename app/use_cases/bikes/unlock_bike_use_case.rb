module Bikes
  class UnlockBikePublisherUseCase
    include Wisper::Publisher

    def call(user_id, station_id, bike_id, password)
      Rails.logger.info("UnlockBikeService::call")
    end

    private

    def ensure_user
    end

    def ensure_station
    end

    def ensure_bike
    end

    def check_password
    end

  end
end
