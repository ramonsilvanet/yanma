module BikeRepository
  class Repository
    class << self
      attr_accessor :repo

      def configure
        yield self
      end

      def repo
        @repo ||= BikeRepository::DatabaseRepository.new
      end

      def find_by_id(bike_id)
        repo.find_by_id(bike_id)
      end

      def all
        @repo.all
      end

      def count
        @repo.count
      end
    end
  end
end
