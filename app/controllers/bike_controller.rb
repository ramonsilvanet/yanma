module Api
  module V1
    class BikeController < ApplicationController

      def unlock
        unlock_service = Bikes::UnlockBikeService.new permitted_params

        unlock_service.subscribe(Stations::CheckSationStatusSubscriberService)
        unlock_service.subscribe(Bikes::CheckBikeSubscriberService)
        unlock_service.subscribe(Rides::StartTravelSubscribeService)
        unlock_service.subscribe(Billing::CheckSationStatusSubscriberService)
        unlock_service.subscribe(Rides::StartTravelSubscribeService, async: true)

        unlock_service.on(:bike_unlock_successful) { render json: { error: 'bike unlocked' } status: :ok }
        unlock_service.on(:bike_unlock_failed) { render json: { error: 'unable to unlock' } tatus: :unprocessable_entity }

        unlock_service.call
      end

      def lock
      end

      def maintenance
      end

      private

      def permitted_params
       params.permit(

       ) 
      end
      
    end
  end
end
