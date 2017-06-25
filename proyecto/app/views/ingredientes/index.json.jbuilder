json.array!(@ingredientes) do |ingrediente|
  json.extract! ingrediente, :id, :ing_nombre
  json.url ingrediente_url(ingrediente, format: :json)
end
