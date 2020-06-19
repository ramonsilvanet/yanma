module Bikes
  class FindBike      
    include Wisper::Publisher

    def call(bike_id)
     Infra::Logger.debug("UseCases::Bikes::FindBike with id #{bike_id}")

      bike = BikeRepository::Repository.find_by_id(bike_id)
      broadcast(:find_bike_success, bike)
    rescue      
      broadcast(:find_bike_fail)
    end
        
  end
end
