require 'rails_helper'

RSpec.describe "songs/show", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      title: "Title",
      author: "Author",
      album: "Album",
      format: "Format",
      rating: 2.5,
      size_mb: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Album/)
    expect(rendered).to match(/Format/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
  end
end
