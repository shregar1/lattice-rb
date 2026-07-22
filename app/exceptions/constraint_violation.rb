module Exceptions
  class ConstraintViolationException < BaseException
    def initialize(msg = 'Constraint violation'); super(msg, 400, 'CONSTRAINT_VIOLATION'); end
  end
end
