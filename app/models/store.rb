class Store < ApplicationRecord
  belongs_to :book
  validates_presence_of :domain, :purchasing_url, :price
end
