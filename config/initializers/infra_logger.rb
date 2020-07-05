require 'services/infra/logger'

Services::Infra::Logger.adapter = Infra::RailsLoggerAdapter
