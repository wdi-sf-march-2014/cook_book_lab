class CreateIngredientsQuantities < ActiveRecord::Migration
  def change
    create_table :ingredients_quantities do |t|
      t.references :ingredient, index: true
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
