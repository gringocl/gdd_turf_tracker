json.array!(@crops) do |crop|
  json.extract! crop, :id, :gdd_target, :name, :start_date
  json.url crop_url(crop, format: :json)
end
