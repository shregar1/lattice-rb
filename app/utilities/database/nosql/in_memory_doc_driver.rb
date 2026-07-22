require_relative 'abstraction'
module Utilities
  module Database
    module NoSQL
      class InMemoryDocumentDriver < BaseDocumentDatabaseDriver
        def initialize; @store = {}; end
        def connect; end
        def disconnect; end
        def insert_document(collection, doc); 'doc_123'; end
        def find_document_by_id(collection, id); nil; end
        def update_document(collection, id, update); true; end
        def delete_document(collection, id); true; end
        def get_driver_name; 'in_memory_doc'; end
      end
    end
  end
end
