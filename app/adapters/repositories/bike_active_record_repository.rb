module Repositories
  class BikeActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = Bike
    end

    def find_by_id(id)
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
