module Repositories
  class BikeRepository

    def initialize(repository)
      @repository = repository
    end

    def find_bike_by(id:)
      @repository.find_by_id(id)
    end

    def all_bikes
      @repository.all
    end

    def count_bikes
      @repository.count
    end

  end
end
