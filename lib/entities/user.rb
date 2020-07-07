module Entities
  class User

    attr_reader :id, :fullname, :email, :password

    def initialize(id: nil, fullname:, email:, password:)
      @id = id
      @fullname = fullname
      @email = email
      @password = password
    end
  end
end
