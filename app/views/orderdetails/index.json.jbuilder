json.array!(@orderdetails) do |orderdetail|
  json.extract! orderdetail, :id, :order_id, :product_id, :cantidad, :ingredientes, :extras, :nota, :importe, :enentrega
  json.url orderdetail_url(orderdetail, format: :json)
end
