module Repositories
  class StationActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = Station
    end

    def find_station_by_id(station_id)
      @model.find(station_id)
    end
  end
end
