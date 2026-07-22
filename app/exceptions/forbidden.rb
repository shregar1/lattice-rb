module Exceptions
  class ForbiddenException < BaseException
    def initialize(msg = 'Forbidden'); super(msg, 403, 'FORBIDDEN'); end
  end
end
