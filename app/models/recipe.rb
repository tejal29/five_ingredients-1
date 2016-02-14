class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients, through: :recipe_ingredients
  has_many :steps
end