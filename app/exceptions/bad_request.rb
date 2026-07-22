module Exceptions
  class BadRequestException < BaseException
    def initialize(msg = 'Bad request'); super(msg, 400, 'BAD_REQUEST'); end
  end
end
