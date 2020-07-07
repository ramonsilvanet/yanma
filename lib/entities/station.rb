module Entities
  class Station

    attr_reader :id, :name, :status, :address, :latitude, :longitude

    def initialize(id: nil, name:, status:, address:, latitude:, longitude:)
      @id = id
      @name = name
      @status = status
      @address = address
      @latitude = latitude
      @longitude = longitude
    end
  end
end
