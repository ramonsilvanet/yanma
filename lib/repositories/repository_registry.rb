module Repositories
  class RepositoryRegistry
    RepositoryNotFound = Class.new(StandardError)
    
    def self.register(type, repo)
      repositories[type] = repo
    end  
    
    def self.register_many(collection = {})
      collection.each { |name, repo|
        register(name, repo) 
      }
    end  
    
    def self.for(type)
      repositories.fetch(type) do
        raise(RepositoryNotFound, "Repository #{type} not registered")
      end
    end
  
    def self.repositories
      @repositories ||= {}
    end
  
    private_class_method :repositories

    private  
    
    def initialize(*)
      raise "Should not be initialiazed"
    end

  end
end
