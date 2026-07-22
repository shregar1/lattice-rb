require_relative 'abstraction'
module Utilities
  module Database
    module NoSQL
      class MongoDbDriver < BaseDocumentDatabaseDriver
        def initialize(config = {}); @config = config; end
        def connect; end
        def disconnect; end
        def insert_document(collection, doc); 'mongo_123'; end
        def find_document_by_id(collection, id); nil; end
        def update_document(collection, id, update); true; end
        def delete_document(collection, id); true; end
        def get_driver_name; 'mongodb'; end
      end
    end
  end
end
