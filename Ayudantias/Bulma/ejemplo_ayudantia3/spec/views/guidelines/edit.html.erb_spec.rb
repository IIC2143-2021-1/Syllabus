require 'rails_helper'

RSpec.describe "guidelines/edit", type: :view do
  before(:each) do
    @guideline = assign(:guideline, Guideline.create!(
      test: "MyString",
      semester: 1,
      year: 1,
      size_mb: 1,
      description: "MyText"
    ))
  end

  it "renders the edit guideline form" do
    render

    assert_select "form[action=?][method=?]", guideline_path(@guideline), "post" do

      assert_select "input[name=?]", "guideline[test]"

      assert_select "input[name=?]", "guideline[semester]"

      assert_select "input[name=?]", "guideline[year]"

      assert_select "input[name=?]", "guideline[size_mb]"

      assert_select "textarea[name=?]", "guideline[description]"
    end
  end
end
