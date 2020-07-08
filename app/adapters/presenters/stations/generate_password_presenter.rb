module Presenters
  module Stations
    class GeneratePasswordPresenter
      def initialize
        @status = :not_acceptable
        @data = ""
      end

      def forbidden
        @status = :forbidden
      end

      def error
        @status = :internal_server_error
      end

      def success(password:)
        @status = :ok
        @data = { password:password }
      end

      def response
        { status: @status, json: @data }
      end
    end
  end
end
