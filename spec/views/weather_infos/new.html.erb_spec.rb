require 'rails_helper'

RSpec.describe "weather_infos/new", type: :view do
  before(:each) do
    assign(:weather_info, WeatherInfo.new(
      :max_temp => 1.5,
      :min_temp => 1.5,
      :base_temp => 1.5
    ))
  end

  it "renders new weather_info form" do
    render

    assert_select "form[action=?][method=?]", weather_infos_path, "post" do

      assert_select "input#weather_info_max_temp[name=?]", "weather_info[max_temp]"

      assert_select "input#weather_info_min_temp[name=?]", "weather_info[min_temp]"

      assert_select "input#weather_info_base_temp[name=?]", "weather_info[base_temp]"
    end
  end
end
