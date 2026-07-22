module Exceptions
  class ConflictException < BaseException
    def initialize(msg = 'Resource conflict'); super(msg, 409, 'CONFLICT'); end
  end
end
