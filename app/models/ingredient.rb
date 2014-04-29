class Ingredient < ActiveRecord::Base
	has_many :ingredient_quantities
	has_many :recipes, through: :ingredient_quantities
end 
