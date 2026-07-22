module Exceptions
  class DatabaseTimeoutException < BaseException
    def initialize(msg = 'Database timeout'); super(msg, 504, 'DATABASE_TIMEOUT'); end
  end
end
