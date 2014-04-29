class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.references :ingredient, index: true
      t.references :recipe, index: true
      t.string :quantity

      t.timestamps
    end
  end
end
