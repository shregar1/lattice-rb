require_relative 'abstraction'
module Utilities
  module Cache
    class InMemoryCacheDriver < BaseCacheClient
      def initialize; @store = {}; end
      def get(key); @store[key]; end
      def set(key, value, ttl = 3600); @store[key] = value; end
      def delete(key); !@store.delete(key).nil?; end
      def get_driver_name; 'in_memory'; end
    end
  end
end
