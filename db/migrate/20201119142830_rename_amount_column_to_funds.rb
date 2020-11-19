class RenameAmountColumnToFunds < ActiveRecord::Migration[6.0]
  def change
    rename_column :funds, :amount, :target_amount
  end
end
