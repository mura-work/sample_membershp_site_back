class Api::V1::TestController < ApplicationController
	def home
		render json: "hello world"
	end
end
