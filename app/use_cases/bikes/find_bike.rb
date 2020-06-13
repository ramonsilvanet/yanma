module Bikes
  class FindBike      
    include Wisper::Publisher

    def call(bike_id)
      Rails.logger.info("UseCases::Bikes::FindBike with id #{bike_id}")

      bike = Bike.find(bike_id)          
      broadcast(:find_bike_success, bike)
    rescue      
      broadcast(:find_bike_fail)
    end
        
  end
end
