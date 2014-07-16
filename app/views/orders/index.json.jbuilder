json.array!(@orders) do |order|
  json.extract! order, :id, :tipo, :cliente, :fecha, :employee_id, :pagada, :importe, :importe, :mesa, :entregas, :pedido
  json.url order_url(order, format: :json)
end
