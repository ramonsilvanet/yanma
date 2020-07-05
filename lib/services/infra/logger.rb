module Services
  module Infra
    module Logger            
      class << self
        attr_accessor :adapter
      end

      def info(msg)
        Logger.adapter.info(msg)
      end

      def warn(msg)
        Logger.adapter.warn(msg)
      end

      def debug(msg)
        Logger.adapter.debug(msg)
      end

      def error(msg)
        Logger.adapter.error(msg)
      end      
    end
  end
end
