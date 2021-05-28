require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        edition: 2,
        rating: 3.5,
        size_mb: 4,
        description: "MyText"
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        edition: 2,
        rating: 3.5,
        size_mb: 4,
        description: "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
