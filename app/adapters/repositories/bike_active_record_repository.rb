module Repositories
  class BikeActiveRecordRepository
    def initialize
      debug("BikeActiveRecordRepository initialize")
      @model = Bike
    end

    def find_by_id(id)
      debug("BikeReposiotry::Database find_by_id #{id}")
      @model.find(id)
    end

    def all
      @model.all
    end

    def count
      @model.count
    end

    private

    def debug(message)
      Services::Infra::Logger.debug("#{message}")
    end
  end
end
