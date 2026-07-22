module Utilities
  module Seeder
    class BaseSeeder
      def seed; raise NotImplementedError; end
    end
    class SeederRunner; end
  end
end
