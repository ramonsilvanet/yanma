require 'repositories/repository_registry'

module UseCases
  module Bikes
    class FindBike
      include Wisper::Publisher
      include Services::Infra::Logger

      def initialize(bike_repository: Repositories::RepositoryRegistry.for(:bikes))
        @bike_repository = bike_repository
      end

      def call(bike_id)
          info("UseCases::Bikes::FindBike with id #{bike_id}")

          bike = @bike_repository.find_bike_by(id: bike_id)
          broadcast(:find_bike_success, bike)
        # rescue => exception
        #   warn("Fail to find bike: #{exception}")
        #   broadcast(:find_bike_fail)
      end
    end
  end
end
