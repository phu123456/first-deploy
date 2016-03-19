json.array!(@maintenances) do |maintenance|
  json.extract! maintenance, :id, :engine_oil, :transmission_oil, :gear_oil, :air_filter, :water_coolant, :cement_blower
  json.url maintenance_url(maintenance, format: :json)
end
