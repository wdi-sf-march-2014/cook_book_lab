class Recipe < ActiveRecord::Base
	has_many :ingredients, through :ingredient_measurement
end
