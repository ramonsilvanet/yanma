require 'repositories/repository_registry'

# Configure Repository Registry to Dependency Injection

REPOS_REGISTRY = {
  bikes: Repositories::BikeActiveRecordRepository.new,
  stations: Repositories::StationActiveRecordRepository.new,
  users: Repositories::UserActiveRecordRepository.new,
  unlock_passwords: Repositories::UnlockPasswordActiveRecordRepository.new
}

Repositories::RepositoryRegistry.register_many(REPOS_REGISTRY)
