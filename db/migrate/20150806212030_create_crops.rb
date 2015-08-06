class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.integer :gdd_target
      t.string :name
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end
