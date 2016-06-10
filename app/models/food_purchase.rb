class FoodPurchase < ActiveRecord::Base
  # validates :brand, :presence => true, :uniqueness => { :scope => :purchase_date }

  belongs_to :user
  belongs_to :dog
end
