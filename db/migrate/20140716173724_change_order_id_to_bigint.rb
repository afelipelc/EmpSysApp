class ChangeOrderIdToBigint < ActiveRecord::Migration
  def change
  	change_column :orders, :id, 'SERIAL'
  end
end
