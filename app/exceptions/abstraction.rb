module Exceptions
  class BaseException < StandardError
    attr_reader :status_code, :response_key

    def initialize(message, status_code = 500, response_key = 'INTERNAL_ERROR')
      super(message)
      @status_code = status_code
      @response_key = response_key
    end
  end
end
