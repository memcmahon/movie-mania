require 'rails_helper'

describe "user sees the movie info page" do
  describe "they visit movies/id" do
    it "shows the movie information" do
      movie_1 = Movie.create!(id: 1, title: "Alice", description: "acid day dream")

      visit "/movies/#{movie_1.id}"

      expect(page).to have_content("Movie Info")
      expect(page).to have_content("Alice")
      expect(page).to have_content("acid day dream")
    end
  end
end
