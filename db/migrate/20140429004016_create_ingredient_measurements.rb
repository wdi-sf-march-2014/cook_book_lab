class CreateIngredientMeasurements < ActiveRecord::Migration
  def change
    create_table :ingredient_measurements do |t|
      t.float :quantity
      t.references :recipe, index: true
      t.references :ingredient, index: true

      t.timestamps
    end
  end
end
