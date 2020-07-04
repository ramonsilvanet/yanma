module Services
  module Infra
    class Logger
      class << self
        def set_logger_adapter(logger_adapter)          
          @@adapter  = logger_adapter
        end

        def info(msg)
          @@adapter.info(msg)
        end

        def warn(msg)
          @@adapter.warn(msg)
        end

        def debug(msg)
          @@adapter.debug(msg)
        end

        def error(msg)
          @@adapter.error(msg)
        end
      end
    end
  end
end
