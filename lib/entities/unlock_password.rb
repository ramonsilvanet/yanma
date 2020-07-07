module Entities
  class UnlockPassword

    THIRTY_SECONDS = 30
    attr_reader :id, :password, :created_at

    def initialize(id: nil, password:, created_at:)
      @id = id
      @password = password
      @created_at = created_at
    end


    def expired?
      password_validity = Time.at(@password.created_at) + THIRTY_SECONDS
      password_validity < Time.now
    end

  end
end
