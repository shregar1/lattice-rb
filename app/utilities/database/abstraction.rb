module Utilities
  module Database
    class BaseDatabaseDriver
      def connect; raise NotImplementedError; end
      def disconnect; raise NotImplementedError; end
      def query(sql, params = []); raise NotImplementedError; end
      def begin_transaction; raise NotImplementedError; end
      def health_check; raise NotImplementedError; end
      def get_driver_name; raise NotImplementedError; end
    end
  end
end
