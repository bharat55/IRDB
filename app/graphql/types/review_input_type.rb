# frozen_string_literal: true

module Types
  class ReviewInputType < Types::BaseInputObject
    argument :title, String, required: true
    argument :description, String, required: true
    argument :score, Integer, required: true
    argument :book_id, Integer, required: true
  end
end
