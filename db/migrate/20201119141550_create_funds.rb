class CreateFunds < ActiveRecord::Migration[6.0]
  def change
    create_table :funds do |t|
      t.string :title
      t.text :description
      t.integer :amount
      t.date :start_date
      t.date :end_date
      t.boolean :fund_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
