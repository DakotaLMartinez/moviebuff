require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :title => "Title",
        :overview => "Overview",
        :original_language => "Original Language",
        :release_date => "Release Date",
        :vote_average => 2.5,
        :poster_path => "Poster Path",
        :backdrop_path => "Backdrop Path"
      ),
      Movie.create!(
        :title => "Title",
        :overview => "Overview",
        :original_language => "Original Language",
        :release_date => "Release Date",
        :vote_average => 2.5,
        :poster_path => "Poster Path",
        :backdrop_path => "Backdrop Path"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Overview".to_s, :count => 2
    assert_select "tr>td", :text => "Original Language".to_s, :count => 2
    assert_select "tr>td", :text => "Release Date".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Poster Path".to_s, :count => 2
    assert_select "tr>td", :text => "Backdrop Path".to_s, :count => 2
  end
end
