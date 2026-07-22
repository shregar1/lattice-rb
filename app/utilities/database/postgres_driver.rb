require_relative 'abstraction'

module Utilities
  module Database
    class PostgresDriver < BaseDatabaseDriver
      attr_reader :config

      def initialize(config = {})
        @config = config
        @connected = false
      end

      def connect; @connected = true; end
      def disconnect; @connected = false; end
      def query(sql, params = []); []; end
      def begin_transaction; self; end
      def health_check; @connected; end
      def get_driver_name; 'postgres'; end
    end
  end
end
