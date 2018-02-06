require "rails_helper"

describe "user sees all movies" do
  describe "they visit movie index" do
    # before(:each) do
    #   @director = Director.create!(name: "Steven Spielberg")
    #   @fred = Movie.create!(title: "Drop Dead Fred", description: "An unhappy housewife gets lifted from deserted island", director: @director)
    #   @empire = Movie.create!(title: "Empire Records", description: "Indy Delaware record store", director: @director)
    # end

    before(:each) do
      @director = create(:director)
      @movies = create_list(:movie, 2, director: @director)
    end

    it "sees all the movies" do
      visit director_movies_path(@director)

      expect(page).to have_content("All Movies")
      expect(page).to have_content(@movies[0].title)
      expect(page).to have_content(@movies[0].title)
      expect(page).to have_content(@movies[1].description)
      expect(page).to have_content(@movies[1].description)
    end
  end
end
