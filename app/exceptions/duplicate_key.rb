module Exceptions
  class DuplicateKeyException < BaseException
    def initialize(msg = 'Duplicate key error'); super(msg, 409, 'DUPLICATE_KEY'); end
  end
end
