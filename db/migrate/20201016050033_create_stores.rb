class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item_listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
