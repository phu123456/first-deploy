json.array!(@transmissions) do |transmission|
  json.extract! transmission, :id
  json.url transmission_url(transmission, format: :json)
end
