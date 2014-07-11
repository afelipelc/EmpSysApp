json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :nombre, :categoria, :subcategoria
  json.url ingredient_url(ingredient, format: :json)
end
