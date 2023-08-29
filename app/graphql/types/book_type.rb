# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :author_name, String
    field :tag_line, String
    field :published_at, GraphQL::Types::ISO8601DateTime
    field :category, String
    field :summary, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :reviews, [Types::ReviewType], null: false
    field :stores, [Types::StoreType], null: false
    field :image_urls, [String], null: false

    def reviews
      object.reviews
    end

    def stores
      object.stores
    end

    def image_urls
      object.images.map{ _1.url }
    end
  end
end
