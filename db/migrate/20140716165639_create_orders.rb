class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :tipo, null: false
      t.string :cliente
      t.datetime :fecha, null: false
      t.references :employee, index: true
      t.boolean :pagada, null: false, default: false
      t.decimal :importe, :precision => 7, :scale => 2, null: false
      t.integer :mesa, null: false, default: 0
      t.integer :entregas, null: false, default: 0
      t.boolean :pedido, null: false, default: false

      t.timestamps
    end
  end
end
