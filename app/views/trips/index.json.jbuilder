json.array!(@trips) do |trip|
  json.extract! trip, :id, :trip_date, :driver, :weight, :trip_type, :liter, :distance, :average, :cement, :destination
  json.url trip_url(trip, format: :json)
end
