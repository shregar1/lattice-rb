require_relative 'abstraction'
module Utilities
  module Queue
    class RabbitMQQueueDriver < BaseQueueClient
      def publish(topic, payload); 'amqp_123'; end
      def subscribe(topic, &handler); end
      def get_driver_name; 'rabbitmq'; end
    end
  end
end
