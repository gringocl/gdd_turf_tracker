class Location < ActiveRecord::Base
  belongs_to :user
  has_many :crops
  has_many :weather_infos
end
