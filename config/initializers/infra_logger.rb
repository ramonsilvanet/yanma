require 'services/infra/logger'

Services::Infra::Logger.set_logger_adapter(Infra::RailsLoggerAdapter)
