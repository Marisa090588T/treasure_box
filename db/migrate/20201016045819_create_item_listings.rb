class CreateItemListings < ActiveRecord::Migration[6.0]
  def change
    create_table :item_listings do |t|
      t.string :item_name
      t.integer :price
      t.text :description
      t.boolean :item_status
      t.references :user, null: false, foreign_key: true
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
