class AddLocationsToCrops < ActiveRecord::Migration
  def change
    add_column :crops, :location_id, :integer
  end
end
