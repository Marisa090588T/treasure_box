class Store < ApplicationRecord
  STATUS = [“Available”, “Sold”]
  belongs_to :buyer class_name: "User", optional: true
  belongs_to :item_listing
  validates :item_status, inclusion: { in: Store::STATUS }
end
