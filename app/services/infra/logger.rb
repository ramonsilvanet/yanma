module Infra
  class Logger
    class << self
      def info(msg)
        Rails.logger.info(msg)
      end

      def warn(msg)
        Rails.logger.warn(msg)
      end

      def debug(msg)
        Rails.logger.debug(msg)
      end

      def error(msg)
        Rails.logger.error(msg)
      end

    end
  end
end
