json.array!(@trucks) do |truck|
  json.extract! truck, :id, :plate, :bulker
  json.url truck_url(truck, format: :json)
end
