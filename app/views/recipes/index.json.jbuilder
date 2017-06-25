json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :titulo, :dificultad, :tiempo, :glosa
  json.url recipe_url(recipe, format: :json)
end
