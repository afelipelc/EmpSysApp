class ChangeSaleIdToBigint < ActiveRecord::Migration
  def change
  	change_column :sales, :id, 'SERIAL'
  end
end
