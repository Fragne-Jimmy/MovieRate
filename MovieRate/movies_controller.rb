class MoviesController < ApplicationController
  def index
	 @movies = Movie.all
  end

 def create
      Movie.create title: params[:title]
	  redirect_to "/movies"
  end

def show
  @movie = Movie.find(params[:id])
end

def update
  Movie.find(params[:id]).update title: params[:title]
  redirect_to "/movies/#{params[:id]}"
end

def destroy
  Movie.find(params[:id]).destroy
  redirect_to "/movies"
end

end
