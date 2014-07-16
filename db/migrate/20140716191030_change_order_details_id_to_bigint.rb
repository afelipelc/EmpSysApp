class ChangeOrderDetailsIdToBigint < ActiveRecord::Migration
  def change
  	change_column :orderdetails, :id, 'SERIAL'
  	change_column :orderdetails, :order_id, :bigint, limit: 20
  end
end
