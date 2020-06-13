module Rides
  class StartTravelSubscribeService

    include Wisper::Publisher
    
    def unlock_bike(user_id)
      Rails.logger.info("StartTravelSubscribeService::unlock_bike")
    end

    private

    def notify_ride_started(bike_id, user_id)      
    end
        
  end
end
