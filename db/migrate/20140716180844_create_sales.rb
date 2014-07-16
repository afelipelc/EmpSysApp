class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :order, index: true
      t.datetime :fecha, null: false
      t.decimal :importepagado, :precision => 7, :scale => 2, null: false
      t.decimal :montorecibido, :precision => 7, :scale => 2, null: false
      t.decimal :montocambio, :precision => 6, :scale => 2, null: false
      t.references :employee, index: true
      t.string :nota

      t.timestamps
    end
  end
end
