module Repositories
  class UserActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = User
    end

    def find_user_by_id(user_id)
      @model.find(user_id)
    end

    def find_last_password_for_user(user_id)
      user = find_user_by_id(user_id)
      user.unlock_passwords.last
    end

  end
end
