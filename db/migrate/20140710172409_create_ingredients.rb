class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :nombre, null: false
      t.integer :categoria, null: false
      t.integer :subcategoria, null: true

      t.timestamps
    end
  end
end
