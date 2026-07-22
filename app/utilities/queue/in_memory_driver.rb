require_relative 'abstraction'
module Utilities
  module Queue
    class InMemoryQueueDriver < BaseQueueClient
      def publish(topic, payload); 'msg_123'; end
      def subscribe(topic, &handler); end
      def get_driver_name; 'in_memory'; end
    end
  end
end
