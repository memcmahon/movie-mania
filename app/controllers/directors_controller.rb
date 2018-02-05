class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to director_path(@director)
    else
      render :new
    end
  end

  private

  def director_params
    params.require(:director).permit(:name)
  end
end
