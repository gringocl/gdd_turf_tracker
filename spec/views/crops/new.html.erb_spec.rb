require 'rails_helper'

RSpec.describe "crops/new", type: :view do
  before(:each) do
    assign(:crop, Crop.new(
      :gdd_target => 1,
      :name => "MyString"
    ))
  end

  it "renders new crop form" do
    render

    assert_select "form[action=?][method=?]", crops_path, "post" do

      assert_select "input#crop_gdd_target[name=?]", "crop[gdd_target]"

      assert_select "input#crop_name[name=?]", "crop[name]"
    end
  end
end
