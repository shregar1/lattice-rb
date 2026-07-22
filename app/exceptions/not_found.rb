module Exceptions
  class NotFoundException < BaseException
    def initialize(msg = 'Resource not found'); super(msg, 404, 'NOT_FOUND'); end
  end
end
