module Services
  class Password
    class << self
      def generate_password
        password_string = ""
        for i in 0..4
          password_string += rand(1..3).to_s
        end

        password_string
      end
    end
  end
end
