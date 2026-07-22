require_relative 'abstraction'
module Utilities
  module Cache
    class RedisCacheDriver < BaseCacheClient
      def initialize(config = {}); @config = config; end
      def get(key); nil; end
      def set(key, value, ttl = 3600); end
      def delete(key); true; end
      def get_driver_name; 'redis'; end
    end
  end
end
