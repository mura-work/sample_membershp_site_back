class Api::V1::ContentMoviesController < ApplicationController
	def index
		contents = ContentMovie.all, methods: [:image_url]
		render json: contents
	end

	def show
		content_movie = ContentMovie.find(params[:id]), methods: [:image_url]
		render json: content_movie
	end

	def create
		# content_movie = ContentMovie.new(content_movie_param)
		content_movie = ContentMovie.new
		content_movie.title = params[:title]
		content_movie.image = params[:image]
		if content_movie.save
			render json: content_movie, methods: [:image_url]
		else
			render json: content_movie.errors, status: 422
		end
	end

	private
	def content_movie_params
		params.permit(:title, :image)
	end
end
