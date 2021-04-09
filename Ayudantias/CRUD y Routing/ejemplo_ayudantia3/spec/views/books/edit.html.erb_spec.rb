require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      author: "MyString",
      edition: 1,
      rating: 1.5,
      size_mb: 1,
      description: "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[edition]"

      assert_select "input[name=?]", "book[rating]"

      assert_select "input[name=?]", "book[size_mb]"

      assert_select "textarea[name=?]", "book[description]"
    end
  end
end
