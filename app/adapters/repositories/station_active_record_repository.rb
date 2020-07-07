require 'entities/station'

module Repositories
  class StationActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = Station
    end

    def find_station_by(id:)
      station = @model.find(id)
      to_entity(station)
    end

    def all
      @model.all.map { |station| to_entity(station) }
    end

    private

    def to_entity(model)
      Entities::Station.new(
        id: model.id,
        name: model.name,
        address: model.address,
        status: model.status,
        latitude: model.latitude,
        longitude: model.longitude
      )
    end
  end
end
