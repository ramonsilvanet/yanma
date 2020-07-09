module Services
  module Infra
    class FakeLoggerAdapter
      def debug(msg);end
      def info(msg);end
      def warn(msg);end
      def error(msg);end
    end
  end
end
