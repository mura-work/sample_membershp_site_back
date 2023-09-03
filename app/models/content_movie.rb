class ContentMovie < ApplicationRecord
	include Rails.application.routes.url_helpers

	# has_one_attached :image
	mount_uploader :content_image, ContentImageUploader

	def image_url
		image.attached? ? url_for(image) : nil
	end
end
