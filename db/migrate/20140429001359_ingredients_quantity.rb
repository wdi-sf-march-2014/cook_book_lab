class IngredientsQuantity < ActiveRecord::Migration
  def change
  	add_column :ingredients_quantities, :quantity, :integer
  end
end
