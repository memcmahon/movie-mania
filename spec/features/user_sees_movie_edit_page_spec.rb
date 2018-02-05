require 'rails_helper'

describe "user sees the movie edit page" do
  describe "they visit movies/id/edit" do
    it "shows edit movie form" do
      director = Director.create!(name: "Steven Spielberg")
      movie_1 = Movie.create!(id: 1, title: "Alice", description: "acid day dream", director: director)

      visit '/movies/1/edit'

      expect(page).to have_content("Edit Movie Info:")
      expect(page).to have_field("movie[title]", :with => "Alice")
      expect(page).to have_field("movie[description]", :with => "acid day dream")
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
