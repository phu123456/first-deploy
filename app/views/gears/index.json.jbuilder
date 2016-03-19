json.array!(@gears) do |gear|
  json.extract! gear, :id
  json.url gear_url(gear, format: :json)
end
