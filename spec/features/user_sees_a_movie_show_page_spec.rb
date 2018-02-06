require 'rails_helper'

describe "user sees the movie info page" do
  describe "they visit movies/id" do
    it "shows the movie information" do
      director = create(:director)
      movie_1 = create(:movie)

      visit movie_path(movie_1)

      expect(page).to have_content("Movie Info")
      expect(page).to have_content(movie_1.title)
      expect(page).to have_content(movie_1.description)
    end
  end
end
