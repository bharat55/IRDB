module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :books, [Types::BookType], null: false
    field :book, Types::BookType, null: true do
      argument :book_id, Integer, required: true
    end

    field :reviews, [Types::ReviewType], null: false do
      argument :book_id, Integer, required: true
    end
    field :review, Types::ReviewType, null: false do
      argument :review_id, Integer, required: true
    end

      
    def books
      Book.all
    end

    def book(book_id:)
      Book.find(book_id)
    end

    def reviews(book_id:)
      book = Book.find(book_id)
      book.reviews
    end

    def review(review_id:)
      Review.find(review_id)
    end
  end
end
