# Lattice (Ruby Edition) — 15-Stage Rack Middleware Pipeline

module Middleware
  PIPELINE_STAGES = [
    "1. ExceptionHandlerMiddleware",
    "2. TrustedHostMiddleware",
    "3. SecurityHeadersMiddleware",
    "4. CorsMiddleware",
    "5. CompressionMiddleware",
    "6. RequestTimeoutMiddleware",
    "7. RequestContextMiddleware",
    "8. RequestLoggerMiddleware",
    "9. RateLimitMiddleware",
    "10. AuthenticationMiddleware",
    "11. TenantResolutionMiddleware",
    "12. AuthorizationMiddleware",
    "13. RequestValidationMiddleware",
    "14. ResponseBuilderMiddleware",
    "15. AuditLoggerMiddleware",
  ].freeze

  class Pipeline; end
end
