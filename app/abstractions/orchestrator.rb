module Abstractions
  class BaseOrchestrator
    attr_reader :unit_of_work

    def initialize(unit_of_work)
      @unit_of_work = unit_of_work
    end
  end
end
