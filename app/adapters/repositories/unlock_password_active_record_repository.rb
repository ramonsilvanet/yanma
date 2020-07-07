module Repositories
  class UnlockPasswordActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = UnlockPassword
    end

    def save_unlock_password(user_id, station_id, password)
      @model.create(user_id: user_id, station_id: station_id, password: password)
    end
  end
end
