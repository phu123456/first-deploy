json.array!(@airs) do |air|
  json.extract! air, :id
  json.url air_url(air, format: :json)
end
