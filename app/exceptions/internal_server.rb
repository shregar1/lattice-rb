module Exceptions
  class InternalServerException < BaseException
    def initialize(msg = 'Internal server error'); super(msg, 500, 'INTERNAL_ERROR'); end
  end
end
