module Bikes
  class GenerateUnlockPassword      
    include Wisper::Publisher

    def initialize(station_id, user_id)
      @station_id = station_id
      @user_id = user_id
    end

    def call
    end

    private
    
    def unsure_station
    end
  end
end
