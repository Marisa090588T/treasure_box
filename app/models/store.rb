class Store < ApplicationRecord
  STATUS = ["Available", "Sold"]
  belongs_to :user
  # belongs_to :buyer class_name: "User", optional: true
  belongs_to :item_listing
  validates :total_price, presence: true
  validates :item_status, inclusion: { in: Store::STATUS }
end
