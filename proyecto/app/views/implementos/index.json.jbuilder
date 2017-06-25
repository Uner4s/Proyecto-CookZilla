json.array!(@implementos) do |implemento|
  json.extract! implemento, :id, :imp_nombre
  json.url implemento_url(implemento, format: :json)
end
