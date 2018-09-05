class MoviesController < ApplicationController
	
	def index
		movies = Schema.execute params[:query]
		render json: movies
	end

end
