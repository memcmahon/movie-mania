require 'rails_helper'

describe "user sees the movie edit page" do
  describe "they visit movies/id/edit" do
    it "shows edit movie form" do
      movie_1 = Movie.create!(id: 1, title: "Alice", description: "acid day dream")

      visit '/movies/1/edit'

      expect(page).to have_content("Edit Movie Info:")
      expect(page).to have_field("movie[title]")
      expect(page).to have_field("movie[description]")
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
