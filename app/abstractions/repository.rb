# Lattice (Ruby Edition) — Base Repository Abstraction

module Abstractions
  class BaseRepository
    def find_by_id(id); raise NotImplementedError; end
    def find_by_urn(urn); raise NotImplementedError; end
    def find_one(criteria); raise NotImplementedError; end
    def find_all(criteria = {}); raise NotImplementedError; end
    def find_paginated(criteria); raise NotImplementedError; end
    def create(entity); raise NotImplementedError; end
    def create_many(entities); raise NotImplementedError; end
    def update(id, entity); raise NotImplementedError; end
    def update_many(criteria, data); raise NotImplementedError; end
    def delete(id); raise NotImplementedError; end
    def soft_delete(id); raise NotImplementedError; end
    def restore(id); raise NotImplementedError; end
    def delete_many(criteria); raise NotImplementedError; end
    def count(criteria = {}); raise NotImplementedError; end
    def exists(criteria); raise NotImplementedError; end
  end
end
