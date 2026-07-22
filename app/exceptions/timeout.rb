module Exceptions
  class TimeoutException < BaseException
    def initialize(msg = 'Request timeout'); super(msg, 504, 'REQUEST_TIMEOUT'); end
  end
end
