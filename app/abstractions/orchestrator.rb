# Lattice (Ruby Edition) — Base Orchestrator Abstraction

module Abstractions
  class BaseOrchestrator
    attr_reader :unit_of_work

    def initialize(unit_of_work)
      @unit_of_work = unit_of_work
    end

    def execute_in_transaction(action_name = nil, &block)
      unit_of_work.execute_in_transaction(&block)
    end
  end
end
