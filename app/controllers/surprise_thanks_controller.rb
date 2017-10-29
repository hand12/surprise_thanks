class SurpriseThanksController < ApplicationController
	def index
		@thanks = SurpriseThank.order(created_at: 'DESC')
	end

	def show
		@thank = SurpriseThank.find(params[:id])
		@hoge = SurpriseThank.new
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
		params.require(:surprise_thank).permit(:title, :image, :episode, :dear_name)
	end
end
