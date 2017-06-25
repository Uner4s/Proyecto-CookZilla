json.array!(@highs) do |high|
  json.extract! high, :id, :score
  json.url high_url(high, format: :json)
end
