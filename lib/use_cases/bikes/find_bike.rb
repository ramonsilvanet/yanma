require 'repositories/bike_repository'

module UseCases
  module Bikes
    class FindBike      
      include Wisper::Publisher
      include Services::Infra::Logger

      def call(bike_id)        
          info("UseCases::Bikes::FindBike with id #{bike_id}")
          
          bike = Repositories::BikeRepository.find_by(id: bike_id)          
          broadcast(:find_bike_success, bike)           
        rescue => exception     
          warn("Fail to find bike: #{exception}")
          broadcast(:find_bike_fail)        
      end            
    end
  end
end
