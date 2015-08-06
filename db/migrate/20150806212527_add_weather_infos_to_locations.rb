class AddWeatherInfosToLocations < ActiveRecord::Migration
  def change
    add_column :weather_infos, :location_id, :integer
  end
end
