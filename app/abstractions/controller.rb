module Abstractions
  class BaseController
    def success(data, message = 'Success', response_key = 'SUCCESS')
      { status: 'SUCCESS', responseMessage: message, responseKey: response_key, data: data }
    end

    def created(data, message = 'Created', response_key = 'RESOURCE_CREATED')
      { status: 'SUCCESS', responseMessage: message, responseKey: response_key, data: data }
    end
  end
end
