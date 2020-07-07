module Entities
  class Bike

    attr_reader :id, :model, :status

    def initialize(id: nil, model: nil, status: nil)
      @id = id
      @model = model
      @status = status
    end
   end
end
