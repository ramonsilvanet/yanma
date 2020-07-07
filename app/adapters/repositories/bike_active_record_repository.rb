require 'entities/bike'

module Repositories
  class BikeActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = Bike
    end

    def find_bike_by(id:)
      bike = @model.find(id)
      to_entity(bike)
    end

    def all
      @model.all.map { |bike| to_entity(bike) }
    end

    def count
      @model.count
    end

    private

    def to_entity(model)
      Entities::Bike.new(
        id: model.id,
        model: model.model,
        status: model.status
      )
    end
  end
end
