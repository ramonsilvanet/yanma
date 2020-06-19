module BikeRepository
  class DatabaseRepository
    def initialize
      Infra::Logger.debug("BikeReposiotry::Database initialize")
      @model = Bike
    end

    def find_by_id(id)
      Infra::Logger.debug("BikeReposiotry::Database find_by_id #{id}")
      @model.find(id)
    end

    def all
      @model.all
    end

    def count
      @model.count
    end
  end
end
