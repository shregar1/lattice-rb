require_relative 'abstraction'

module Utilities
  module Database
    class SqliteDriver < BaseDatabaseDriver
      attr_reader :file_path

      def initialize(file_path = ':memory:')
        @file_path = file_path
        @connected = false
      end

      def connect; @connected = true; end
      def disconnect; @connected = false; end
      def query(sql, params = []); []; end
      def begin_transaction; self; end
      def health_check; @connected; end
      def get_driver_name; 'sqlite'; end
    end
  end
end
