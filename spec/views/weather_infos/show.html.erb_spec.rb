require 'rails_helper'

RSpec.describe "weather_infos/show", type: :view do
  before(:each) do
    @weather_info = assign(:weather_info, WeatherInfo.create!(
      :max_temp => 1.5,
      :min_temp => 1.5,
      :base_temp => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
