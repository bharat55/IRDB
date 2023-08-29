class Book < ApplicationRecord
  validates_presence_of :name, :author_name, :published_at, :category

  has_many :stores
  has_many :reviews
  has_many_attached :images

  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  def avg_score
    reviews.average(:score).round(2)
  end
end
