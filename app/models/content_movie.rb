class ContentMovie < ApplicationRecord
	has_one_attached :image
	has_one_attached :movie

	include Rails.application.routes.url_helpers

	def image_url
		image.attached? ? url_for(image) : nil
	end
end
