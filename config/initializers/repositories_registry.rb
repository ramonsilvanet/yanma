require 'repositories/repository_registry'
require 'repositories/bike_repository'
require 'repositories/station_repository'

# Configure Repository Registry to Dependency Injection

REPO_REGISTRY = {
  bikes: Repositories::BikeRepository.new(
    Repositories::BikeActiveRecordRepository.new
  ),
  station: Repositories::StationRepository.new(
    Repositories::StationActiveRecordRepository.new
  ),
}

Repositories::RepositoryRegistry.register_many(REPO_REGISTRY)
