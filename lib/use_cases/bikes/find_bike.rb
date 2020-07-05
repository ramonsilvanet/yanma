require 'repositories/bike_repository'

module UseCases
  module Bikes
    class FindBike      
      include Wisper::Publisher

      def call(bike_id)        
          Services::Infra::Logger.info("UseCases::Bikes::FindBike with id #{bike_id}")
          
          bike = Repositories::BikeRepository.find_by(id: bike_id)          
          broadcast(:find_bike_success, bike)           
        rescue => exception     
          Services::Infra::Logger.info("An Error occoured #{exception}") 
          broadcast(:find_bike_fail)        
      end            
    end
  end
end
