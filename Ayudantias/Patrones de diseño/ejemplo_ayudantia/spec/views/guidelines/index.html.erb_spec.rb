require 'rails_helper'

RSpec.describe "guidelines/index", type: :view do
  before(:each) do
    assign(:guidelines, [
      Guideline.create!(
        test: "Test",
        semester: 2,
        year: 3,
        size_mb: 4,
        description: "MyText"
      ),
      Guideline.create!(
        test: "Test",
        semester: 2,
        year: 3,
        size_mb: 4,
        description: "MyText"
      )
    ])
  end

  it "renders a list of guidelines" do
    render
    assert_select "tr>td", text: "Test".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
