module Exceptions
  class UnauthenticatedException < BaseException
    def initialize(msg = 'Unauthenticated'); super(msg, 401, 'UNAUTHENTICATED'); end
  end
end
