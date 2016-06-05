class CreateFoodPurchases < ActiveRecord::Migration
  def change
    create_table :food_purchases do |t|
      t.date :purchase_date
      t.string :brand
      t.integer :volume
      t.date :run_out_date
      t.string :user_id
      t.string :dog_id

      t.timestamps

    end
  end
end
