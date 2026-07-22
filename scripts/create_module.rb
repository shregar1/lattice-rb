#!/usr/bin/env ruby
require 'fileutils'

if ARGV.empty?
  puts "❌ Error: Please provide a module name."
  puts "Example: ruby scripts/create_module.rb Product"
  exit 1
end

raw = ARGV[0]
pascal = raw.capitalize
snake = raw.downcase

puts "🚀 Scaffolding Lattice-Rb Clean-Architecture Module for: #{pascal}...\n\n"

def write_file(path, content)
  FileUtils.mkdir_p(File.dirname(path))
  if File.exist?(path)
    puts "  ⚠️ Skipping existing file: #{path}"
    return
  end
  File.write(path, content.strip + "\n")
  puts "  ✓ Created: #{path}"
end

# 1. Model
write_file("app/models/#{snake}.rb", <<~RUBY)
  module Models
    class #{pascal}
      attr_accessor :id, :urn, :name, :owner_id, :tenant_id, :is_deleted, :created_at, :updated_at
    end
  end
RUBY

# 2. DTO
write_file("app/dto/requests/#{snake}.rb", <<~RUBY)
  module Dto
    module Requests
      class Create#{pascal} < Dry::Struct
        attribute :name, Types::String
      end
    end
  end
RUBY

# 3. Repository
write_file("app/repositories/#{snake}_repository.rb", <<~RUBY)
  module Repositories
    class #{pascal}Repository < BaseRepository
      def find_by_id(id)
        dataset.where(id: id, is_deleted: false).first
      end
    end
  end
RUBY

# 4. Service
write_file("app/services/#{snake}_service.rb", <<~RUBY)
  module Services
    class #{pascal}Service < BaseService
      include Import['repositories.#{snake}_repository']
    end
  end
RUBY

# 5. Orchestrator
write_file("app/orchestrators/#{snake}_orchestrator.rb", <<~RUBY)
  module Orchestrators
    class #{pascal}Orchestrator < BaseOrchestrator
      include Import['services.#{snake}_service', 'utilities.unit_of_work']
    end
  end
RUBY

puts "\n✨ Scaffolding complete for lattice-rb module '#{pascal}'!"
