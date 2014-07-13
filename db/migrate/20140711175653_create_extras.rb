class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :nombre
      t.integer :categoria
      t.float :costo

      t.timestamps
    end
  end
end
