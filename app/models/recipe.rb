class Recipe < ActiveRecord::Base
	has_many :ingredients_measurements
	has_many :ingredients, through: :ingredients_measurements
	accepts_nested_attributes_for :ingredients_measurements
end
