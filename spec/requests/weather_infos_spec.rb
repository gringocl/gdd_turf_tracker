require 'rails_helper'

RSpec.describe "WeatherInfos", type: :request do
  describe "GET /weather_infos" do
    it "works! (now write some real specs)" do
      get weather_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
