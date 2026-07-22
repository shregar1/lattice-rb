module Exceptions
  class BadRequestException < BaseException
    def initialize(msg = 'Bad request'); super(msg, 400, 'BAD_REQUEST'); end
  end

  class UnauthenticatedException < BaseException
    def initialize(msg = 'Unauthenticated'); super(msg, 401, 'UNAUTHENTICATED'); end
  end

  class UnauthorizedException < BaseException
    def initialize(msg = 'Unauthorized'); super(msg, 403, 'UNAUTHORIZED'); end
  end

  class NotFoundException < BaseException
    def initialize(msg = 'Resource not found'); super(msg, 404, 'NOT_FOUND'); end
  end

  class ConflictException < BaseException
    def initialize(msg = 'Resource conflict'); super(msg, 409, 'CONFLICT'); end
  end

  class InternalServerException < BaseException
    def initialize(msg = 'Internal server error'); super(msg, 500, 'INTERNAL_ERROR'); end
  end
end
