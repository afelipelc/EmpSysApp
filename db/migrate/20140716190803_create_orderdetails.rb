class CreateOrderdetails < ActiveRecord::Migration
  def change
    create_table :orderdetails do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.integer :cantidad, null: false
      t.string :ingredientes
      t.string :extras
      t.string :nota
      t.decimal :importe, :precision => 7, :scale => 2, null: false
      t.integer :enentrega

      t.timestamps
    end
  end
end
