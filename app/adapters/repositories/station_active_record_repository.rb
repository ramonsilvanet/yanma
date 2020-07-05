module Repositories
  class StationActiveRecordRepository
    include Services::Infra::Logger

    def initialize      
      @model = Station
    end
  end
end
