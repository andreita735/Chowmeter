class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :dob
      t.string :breed
      t.integer :consumption_per_day
      t.string :user_id

      t.timestamps

    end
  end
end
