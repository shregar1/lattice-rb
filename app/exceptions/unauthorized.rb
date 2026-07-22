module Exceptions
  class UnauthorizedException < BaseException
    def initialize(msg = 'Unauthorized access'); super(msg, 403, 'UNAUTHORIZED'); end
  end
end
