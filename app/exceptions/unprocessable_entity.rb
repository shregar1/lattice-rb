module Exceptions
  class UnprocessableEntityException < BaseException
    def initialize(msg = 'Unprocessable entity'); super(msg, 422, 'UNPROCESSABLE_ENTITY'); end
  end
end
