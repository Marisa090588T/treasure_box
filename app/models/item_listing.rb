class ItemListing < ApplicationRecord
  # STATUS = [“Available”, “Sold”]
  belongs_to :user
  has_one_attached :photo
  validates :item_name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 3 }
  # validates :item_status, inclusion: { in: ItemListing::STATUS }
end
