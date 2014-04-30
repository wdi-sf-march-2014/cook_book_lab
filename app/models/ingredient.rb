class Ingredient < ActiveRecord::Base
	has_many :ingredient_measurements
	has_many :recipes
