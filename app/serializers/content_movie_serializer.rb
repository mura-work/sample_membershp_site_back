class ContentMovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_public, :category, :content_image

  # has_one_attached :image

  def image_url
		image.attached? ? url_for(image) : nil
	end
end
