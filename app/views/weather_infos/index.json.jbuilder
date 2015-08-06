json.array!(@weather_infos) do |weather_info|
  json.extract! weather_info, :id, :max_temp, :min_temp, :date, :base_temp
  json.url weather_info_url(weather_info, format: :json)
end
