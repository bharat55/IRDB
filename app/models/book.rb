class Book < ApplicationRecord
  validates_presence_of :name, :author_name, :published_at, :category

  def avg_score
    reviews.average(:score).round(2)
  end
end
