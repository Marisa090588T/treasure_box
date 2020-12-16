class AddFundIdToItemListing < ActiveRecord::Migration[6.0]
  def change
    add_reference :item_listings, :fund, foreign_key: true
  end
end
