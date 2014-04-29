class Ingredient < ActiveRecord::Base
	has_many :ingredients_quantities
	has_many :recipes, through: :ingredients_quantities
end
