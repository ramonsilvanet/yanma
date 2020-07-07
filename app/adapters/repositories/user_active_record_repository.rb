require 'entities/user'
require 'entities/unlock_password'

module Repositories
  class UserActiveRecordRepository
    include Services::Infra::Logger

    def initialize
      @model = User
    end

    def find_user_by(id:)
      user_model = @model.find(id)
      to_entity(user_model)
    end

    def find_last_password_for_user(user_id)
      user_model = @model.find(user_id)
      last_password = user_model.unlock_passwords.last

      Entities::UnlockPassword.new(
        password: last_password.password,
        created_at: last_password.created_at
      ) unless last_password.nil?
    end

    private

    def to_entity(model)
      Entities::User.new(
        id: model.id,
        fullname: model.fullname,
        email: model.email,
        password: model.password
      )
    end

  end
end
