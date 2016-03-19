json.array!(@coolants) do |coolant|
  json.extract! coolant, :id
  json.url coolant_url(coolant, format: :json)
end
