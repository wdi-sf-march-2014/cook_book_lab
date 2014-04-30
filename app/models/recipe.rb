class Recipe < ActiveRecord::Base
	has_many :ingredient_measurements
	has_many :ingredients
end
