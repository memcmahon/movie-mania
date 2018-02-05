require 'rails_helper'

describe "user sees new movie form" do
  describe "they visit movies/new" do
    it "shows new movie form" do
      director = Director.create!(name: "Megan")

      visit new_director_movie_path(director)

      expect(page).to have_content("Enter Movie Info:")
      expect(page).to have_field("movie[title]")
      expect(page).to have_field("movie[description]")
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
