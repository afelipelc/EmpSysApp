class ChangeSaleOrderIdToBigint < ActiveRecord::Migration
  def change
  	change_column :sales, :order_id, :bigint, limit: 20
  end
end
