require_relative 'sqlite_driver'
require_relative 'postgres_driver'

module Utilities
  module Database
    class DatabaseDriverFactory
      def self.create_driver(type = ENV['DATABASE_TYPE'] || 'sqlite')
        case type.to_s.downcase
        when 'postgres', 'postgresql', 'pg'
          PostgresDriver.new
        else
          SqliteDriver.new
        end
      end
    end
  end
end
