module Repositories
  class StationActiveRecordRepository
    def initialize
      Services::Infra::Logger.debug("StationActiveRecordRepository initialize")
      @model = Station
    end
  end
end
