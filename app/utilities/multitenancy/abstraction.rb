module Utilities
  module Multitenancy
    class BaseTenantIsolationStrategy
      def resolve_tenant_id(context); 'default_tenant'; end
    end
    class HeaderBasedTenantIsolationStrategy < BaseTenantIsolationStrategy; end
  end
end
