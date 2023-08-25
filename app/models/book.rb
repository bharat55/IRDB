class Book < ApplicationRecord
  validates_presence_of :name, :author_name, :published_at, :category

  has_many :stores
  has_many :reviews

  def avg_score
    reviews.average(:score).round(2)
  end
end
