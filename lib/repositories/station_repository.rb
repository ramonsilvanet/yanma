module Repositories
  class StationRepository

    def initialize(repository)
      @repository = repository
    end

    def find_station_by(id:)
      @repository.find_by_id(id)
    end

    def all_stations
      @repository.all
    end

    def count_stations
      @repository.count
    end

  end
end
