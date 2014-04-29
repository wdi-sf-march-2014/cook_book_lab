class Ingredient < ActiveRecord::Base
  # belongs_to :recipe
  has_many :measurments
  has_many :recipes, through: :measurements
  

end
