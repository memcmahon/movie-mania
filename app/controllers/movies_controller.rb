class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def new
    @director = Director.find(params[:director_id])
    @movie = @director.movies.new
  end

  def create
    @director = Director.find(params[:director_id])
    @movie = @director.movies.new(movie_params)
    if @movie.save
      redirect_to director_movies_path(@director)
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end
