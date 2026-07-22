# Lattice (Ruby Edition) — Controller Abstraction
require_relative '../constants/http_status'

module Abstractions
  class BaseController
    def envelope(data, message = 'Operation completed successfully', response_key = 'SUCCESS', status_code = Constants::HttpStatus::OK, context = nil)
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
      envelope(data, message, response_key, Constants::HttpStatus::OK, context)
    end

    def created(data, message = 'Resource created successfully', response_key = 'RESOURCE_CREATED', context = nil)
      envelope(data, message, response_key, Constants::HttpStatus::CREATED, context)
    end
  end
end
