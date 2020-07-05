require 'services/infra/logger'

class ApplicationController < ActionController::API
  include Services::Infra::Logger
end
