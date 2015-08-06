require 'rails_helper'

RSpec.describe "crops/index", type: :view do
  before(:each) do
    assign(:crops, [
      Crop.create!(
        :gdd_target => 1,
        :name => "Name"
      ),
      Crop.create!(
        :gdd_target => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of crops" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
