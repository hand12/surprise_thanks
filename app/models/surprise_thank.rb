class SurpriseThank < ApplicationRecord
	validates :title, presence: true

	mount_uploader :image, ThanksImageUploader

	has_many :comments, dependent: :delete_all
	belongs_to :user
end
