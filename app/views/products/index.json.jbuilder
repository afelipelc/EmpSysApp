json.array!(@products) do |product|
  json.extract! product, :id, :descripcion, :precio, :categoria, :subcategoria, :noingredientes, :conbebida, :activo
  json.url product_url(product, format: :json)
end
