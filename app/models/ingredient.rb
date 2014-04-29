class Ingredient < ActiveRecord::Base
		has_many :ingredients_measurements
		has_many :recipes, through: :ingredients_measurements
end
