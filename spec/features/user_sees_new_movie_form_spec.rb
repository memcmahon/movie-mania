require 'rails_helper'

describe "user sees new movie form" do
  describe "they visit movies/new" do
    it "shows new movie form" do

      visit new_movie_path

      expect(page).to have_content("Enter Movie Info:")
      expect(page).to have_field("movie[title]")
      expect(page).to have_field("movie[description]")
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
