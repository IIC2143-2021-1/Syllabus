require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  before(:each) do
    assign(:song, Song.new(
      title: "MyString",
      author: "MyString",
      album: "MyString",
      format: "MyString",
      rating: 1.5,
      size_mb: 1
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

      assert_select "input[name=?]", "song[title]"

      assert_select "input[name=?]", "song[author]"

      assert_select "input[name=?]", "song[album]"

      assert_select "input[name=?]", "song[format]"

      assert_select "input[name=?]", "song[rating]"

      assert_select "input[name=?]", "song[size_mb]"
    end
  end
end
