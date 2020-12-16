class CreateMoneyInvestments < ActiveRecord::Migration[6.0]
  def change
    create_table :money_investments do |t|
      t.integer :amount
      t.references :user, null: false, foreign_key: true
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
