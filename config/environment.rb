# Load the Rails application.
require_relative 'application'
require 'repositories/repository_registry'

# Initialize the Rails application.
Rails.application.initialize!


# Configure Repository Registry to Dependency Injection

REPO_REGISTRY = {
  bikes: Repositories::BikeActiveRecordRepository.new,
  station: Repositories::StationActiveRecordRepository.new
}

Repositories::RepositoryRegistry.register_many(REPO_REGISTRY)
