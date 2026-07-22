# Lattice (Ruby Edition) — Controller Abstraction

module Abstractions
  class BaseController
    def envelope(data, message = 'Operation completed successfully', response_key = 'SUCCESS', status_code = 200, context = nil)
      {
        transactionUrn: context&.request_urn || '',
        status: status_code < 400 ? 'SUCCESS' : 'FAILED',
        responseMessage: message,
        responseKey: response_key,
        errors: [],
        timestamp: Time.now.iso8601,
        metadata: {},
        data: data,
        referenceUrn: context&.reference_urn || ''
      }
    end

    def success(data, message = 'Operation completed successfully', response_key = 'SUCCESS', context = nil)
      envelope(data, message, response_key, 200, context)
    end

    def created(data, message = 'Resource created successfully', response_key = 'RESOURCE_CREATED', context = nil)
      envelope(data, message, response_key, 201, context)
    end
  end
end
