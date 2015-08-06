require "rails_helper"

RSpec.describe WeatherInfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weather_infos").to route_to("weather_infos#index")
    end

    it "routes to #new" do
      expect(:get => "/weather_infos/new").to route_to("weather_infos#new")
    end

    it "routes to #show" do
      expect(:get => "/weather_infos/1").to route_to("weather_infos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weather_infos/1/edit").to route_to("weather_infos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/weather_infos").to route_to("weather_infos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/weather_infos/1").to route_to("weather_infos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/weather_infos/1").to route_to("weather_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weather_infos/1").to route_to("weather_infos#destroy", :id => "1")
    end

  end
end
