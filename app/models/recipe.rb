class Recipe < ActiveRecord::Base
	has_many :ingredients_quantities
	has_many :ingredients, through: :ingredients_quantities
end
