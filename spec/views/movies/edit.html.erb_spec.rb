require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "MyString",
      :overview => "MyString",
      :original_language => "MyString",
      :release_date => "MyString",
      :vote_average => 1.5,
      :poster_path => "MyString",
      :backdrop_path => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "input[name=?]", "movie[overview]"

      assert_select "input[name=?]", "movie[original_language]"

      assert_select "input[name=?]", "movie[release_date]"

      assert_select "input[name=?]", "movie[vote_average]"

      assert_select "input[name=?]", "movie[poster_path]"

      assert_select "input[name=?]", "movie[backdrop_path]"
    end
  end
end
