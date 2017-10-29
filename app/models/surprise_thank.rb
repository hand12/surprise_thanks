class SurpriseThank < ApplicationRecord
	validates :title, presence: true

	mount_uploader :image, ThanksImageUploader
end
