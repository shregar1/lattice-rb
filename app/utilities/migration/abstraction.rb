module Utilities
  module Migration
    class BaseMigration
      def up; raise NotImplementedError; end
      def down; raise NotImplementedError; end
    end
    class MigrationRunner; end
  end
end
