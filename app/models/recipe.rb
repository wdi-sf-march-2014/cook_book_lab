class Recipe < ActiveRecord::Base
	has_many :ingredient_quantities
	has_many :ingredients, through: :ingredient_quantities
end
