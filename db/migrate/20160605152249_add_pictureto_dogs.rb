class AddPicturetoDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :picture_url, :string
  end
end
