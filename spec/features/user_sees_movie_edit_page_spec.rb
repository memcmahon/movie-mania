require 'rails_helper'

describe "user sees the movie edit page" do
  describe "they visit movies/id/edit" do
    it "shows edit movie form" do
      director = create(:director)
      movie_1 = create(:movie, director: director)

      visit edit_movie_path(movie_1)

      expect(page).to have_content("Edit Movie Info:")
      expect(page).to have_field("movie[title]", :with => "#{movie_1.title}")
      expect(page).to have_field("movie[description]", :with => "#{movie_1.description}")
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
