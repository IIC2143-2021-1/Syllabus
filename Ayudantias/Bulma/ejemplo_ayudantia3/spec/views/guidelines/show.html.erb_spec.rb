require 'rails_helper'

RSpec.describe "guidelines/show", type: :view do
  before(:each) do
    @guideline = assign(:guideline, Guideline.create!(
      test: "Test",
      semester: 2,
      year: 3,
      size_mb: 4,
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Test/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
  end
end
