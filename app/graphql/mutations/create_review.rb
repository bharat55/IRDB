module Mutations
  class CreateReview < BaseMutation

    argument :review_input, Types::ReviewInputType, required: true

    field :review, Types::ReviewType, null: true
    field :errors, [String], null: false

    def resolve(review_input:)
      review = Review.new
      review.assign_attributes(review_input.to_h)
      if review.save
        { review: review, errors: []  }
      else
        { Review: nil, errors: review.errors.full_messages }
      end
    end
  end
end