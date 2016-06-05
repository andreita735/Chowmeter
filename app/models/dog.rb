class Dog < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :user
  has_many :food_purchases
end
