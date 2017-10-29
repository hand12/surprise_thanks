class SurpriseThanksController < ApplicationController
	def index
	end

	def show
		@thank = SurpriseThank.new
	end

	def new
		@thank = SurpriseThank.new
	end

	def create
		@thank = SurpriseThank.new(thank_params)
		unless @thank.save
			flash[:alert] = "投稿できませんでした。"
			render :new
		end
	end

	private

	def thank_params
		params.require(:surprise_thank).permit(:title, :image, :episode)
	end
end
