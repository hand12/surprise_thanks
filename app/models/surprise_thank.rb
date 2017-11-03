class SurpriseThank < ApplicationRecord
	validates :title, presence: true

	mount_uploader :image, ThanksImageUploader

	belongs_to :user
end
