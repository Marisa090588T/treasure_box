class AddAchievemntAmountToFunds < ActiveRecord::Migration[6.0]
  def change
    add_column :funds, :achievement_amount, :integer
  end
end
