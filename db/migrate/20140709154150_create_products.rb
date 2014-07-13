class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :descripcion, null: false
      t.float :precio, null: false
      t.integer :categoria, null: false
      t.integer :subcategoria, null: true
      t.integer :noingredientes, null: true
      t.boolean :conbebida, null: true, default: false
      t.boolean :activo, null: false, default: true
      t.timestamps
    end
  end
end
