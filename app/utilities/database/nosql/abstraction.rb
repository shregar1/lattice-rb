module Utilities
  module Database
    module NoSQL
      class BaseDocumentDatabaseDriver
        def connect; raise NotImplementedError; end
        def disconnect; raise NotImplementedError; end
        def insert_document(collection, doc); raise NotImplementedError; end
        def find_document_by_id(collection, id); raise NotImplementedError; end
        def update_document(collection, id, update); raise NotImplementedError; end
        def delete_document(collection, id); raise NotImplementedError; end
        def get_driver_name; raise NotImplementedError; end
      end
    end
  end
end
