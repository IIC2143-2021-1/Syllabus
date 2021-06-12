require 'rails_helper'

RSpec.describe "songs/index", type: :view do
  before(:each) do
    assign(:songs, [
      Song.create!(
        title: "Title",
        author: "Author",
        album: "Album",
        format: "Format",
        rating: 2.5,
        size_mb: 3
      ),
      Song.create!(
        title: "Title",
        author: "Author",
        album: "Album",
        format: "Format",
        rating: 2.5,
        size_mb: 3
      )
    ])
  end

  it "renders a list of songs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "Album".to_s, count: 2
    assert_select "tr>td", text: "Format".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
