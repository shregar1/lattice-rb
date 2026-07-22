module Utilities
  module Queue
    class BaseQueueClient
      def publish(topic, payload); raise NotImplementedError; end
      def subscribe(topic, &handler); raise NotImplementedError; end
      def get_driver_name; raise NotImplementedError; end
    end
  end
end
