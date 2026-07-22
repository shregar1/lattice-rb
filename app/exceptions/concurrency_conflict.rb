module Exceptions
  class ConcurrencyConflictException < BaseException
    def initialize(msg = 'Concurrency conflict'); super(msg, 409, 'CONCURRENCY_CONFLICT'); end
  end
end
