json.array!(@blowers) do |blower|
  json.extract! blower, :id
  json.url blower_url(blower, format: :json)
end
