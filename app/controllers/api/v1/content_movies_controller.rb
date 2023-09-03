class Api::V1::ContentMoviesController < ApplicationController
	def index
		contents = ContentMovie.all
		render json: contents
	end

	def show
		content_movie = ContentMovie.find(params[:id])
		render json: content_movie
	end

	def create
		# content_movie = ContentMovie.new(content_movie_param)
		content_movie = ContentMovie.new
		content_movie.title = params[:title]
		content_movie.content_image = params[:content_image]
		if content_movie.save
			render json: content_movie
		else
			render json: content_movie.errors, status: 422
		end
	end

	private
	def content_movie_params
		params.permit(:title, :category, :content_image)
	end
end
