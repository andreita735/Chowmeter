class Changecolumntypeuserid < ActiveRecord::Migration
  def change
    change_column :dogs, :user_id, :integer
    change_column :food_purchases, :user_id, :integer
    change_column :food_purchases, :dog_id, :integer
  end
end
