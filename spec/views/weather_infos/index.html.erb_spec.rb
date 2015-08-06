require 'rails_helper'

RSpec.describe "weather_infos/index", type: :view do
  before(:each) do
    assign(:weather_infos, [
      WeatherInfo.create!(
        :max_temp => 1.5,
        :min_temp => 1.5,
        :base_temp => 1.5
      ),
      WeatherInfo.create!(
        :max_temp => 1.5,
        :min_temp => 1.5,
        :base_temp => 1.5
      )
    ])
  end

  it "renders a list of weather_infos" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
