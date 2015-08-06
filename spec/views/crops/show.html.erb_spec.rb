require 'rails_helper'

RSpec.describe "crops/show", type: :view do
  before(:each) do
    @crop = assign(:crop, Crop.create!(
      :gdd_target => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
  end
end
