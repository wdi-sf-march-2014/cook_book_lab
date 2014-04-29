class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :quantity
      t.references :ingredient, index: true
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
