class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable
				 
	mount_uploader :profile_image, ProfileImageUploader
	
	validates :name, :handle_name, presence: true
	validates :handle_name, uniqueness: true

	has_many :surprise_thanks
	has_many :comments, dependent: :delete_all
end
