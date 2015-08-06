json.array!(@locations) do |location|
  json.extract! location, :id, :name, :zip_code
  json.url location_url(location, format: :json)
end
