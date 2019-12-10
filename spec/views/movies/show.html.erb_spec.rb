require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "Title",
      :overview => "Overview",
      :original_language => "Original Language",
      :release_date => "Release Date",
      :vote_average => 2.5,
      :poster_path => "Poster Path",
      :backdrop_path => "Backdrop Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Overview/)
    expect(rendered).to match(/Original Language/)
    expect(rendered).to match(/Release Date/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Poster Path/)
    expect(rendered).to match(/Backdrop Path/)
  end
end
