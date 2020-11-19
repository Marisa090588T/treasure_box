class Fund < ApplicationRecord
  belongs_to :user
  has_many :item_listings
end
