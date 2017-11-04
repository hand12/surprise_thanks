class Comment < ApplicationRecord

	validates :text, presence: true

	belongs_to :user
	belongs_to :surprise_thank
end
