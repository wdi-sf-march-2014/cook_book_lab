class Recipe < ActiveRecord::Base
	has_many :measurments
	has_many :ingredients, through: :measurments
end
