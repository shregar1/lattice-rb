module Exceptions
  class ConnectionFailureException < BaseException
    def initialize(msg = 'Database connection failure'); super(msg, 503, 'CONNECTION_FAILURE'); end
  end
end
