# frozen_string_literal: true

module Types
  class StoreType < Types::BaseObject
    field :id, ID, null: false
    field :domain, String
    field :purchasing_url, String
    field :price, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
