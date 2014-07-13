json.array!(@extras) do |extra|
  json.extract! extra, :id, :nombre, :categoria, :costo
  json.url extra_url(extra, format: :json)
end
