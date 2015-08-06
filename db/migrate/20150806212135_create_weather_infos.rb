class CreateWeatherInfos < ActiveRecord::Migration
  def change
    create_table :weather_infos do |t|
      t.float :max_temp
      t.float :min_temp
      t.datetime :date
      t.float :base_temp

      t.timestamps null: false
    end
  end
end
