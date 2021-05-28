require 'rails_helper'

RSpec.describe "guidelines/new", type: :view do
  before(:each) do
    assign(:guideline, Guideline.new(
      test: "MyString",
      semester: 1,
      year: 1,
      size_mb: 1,
      description: "MyText"
    ))
  end

  it "renders new guideline form" do
    render

    assert_select "form[action=?][method=?]", guidelines_path, "post" do

      assert_select "input[name=?]", "guideline[test]"

      assert_select "input[name=?]", "guideline[semester]"

      assert_select "input[name=?]", "guideline[year]"

      assert_select "input[name=?]", "guideline[size_mb]"

      assert_select "textarea[name=?]", "guideline[description]"
    end
  end
end
