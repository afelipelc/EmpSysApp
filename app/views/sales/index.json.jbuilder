json.array!(@sales) do |sale|
  json.extract! sale, :id, :order_id, :fecha, :importepagado, :montorecibido, :employee_id, :nota
  json.url sale_url(sale, format: :json)
end
