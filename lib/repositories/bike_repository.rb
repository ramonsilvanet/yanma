module Repositories
  class BikeRepository
    class << self
      attr_accessor :repo

      def configure
        yield self
      end

      def repo
        @@repo ||= RepositoryRegistry.for(:bikes)
      end

      def find_by(id:)                
        repo.find_by_id(id)
      end

      def all
        @@repo.all
      end

      def count
        @@repo.count
      end
    end
  end
end
