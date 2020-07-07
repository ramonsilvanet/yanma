module Repositories
  class UserRepository
    include Services::Infra::Logger

    def initialize(repository_implementation)
      @repository = repository_implementation
    end

    def find_user_by_id(id)
      @repository.find_user_by_id(id)
    end

    def find_last_password_for_user(user_id)
      user = find_user_by_id(user_id)
      user.unlock_passwords.last
    end

    def save_password_for_user(user_id, station_id, password)
      @repository.save_password_for_user(user_id, station_id, password)
    end

  end
end
