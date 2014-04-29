class CreateIngredientsMeasurements < ActiveRecord::Migration
  def change
    create_table :ingredients_measurements do |t|
      t.references :ingredient, index: true
      t.references :recipe, index: true
      t.float :quantity

      t.timestamps
    end
  end
end
