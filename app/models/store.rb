class Store < ApplicationRecord
  belongs_to :buyer class_name: "User", optional: true
  belongs_to :item_listing
end
