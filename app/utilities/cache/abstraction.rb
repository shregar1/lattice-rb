module Utilities
  module Cache
    class BaseCacheClient
      def get(key); raise NotImplementedError; end
      def set(key, value, ttl = 3600); raise NotImplementedError; end
      def delete(key); raise NotImplementedError; end
      def get_driver_name; raise NotImplementedError; end
    end
  end
end
