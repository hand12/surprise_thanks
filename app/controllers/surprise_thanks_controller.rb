class SurpriseThanksController < ApplicationController
	before_action :authenticate_user!
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
		thank = SurpriseThank.new(thank_params)
		unless thank.save
			flash[:alert] = "投稿できませんでした。"
			render :new
		end
	end

	def edit
		@thank = SurpriseThank.find(params[:id])
	end

	def update
		thank = SurpriseThank.find(params[:id])
		if thank.update(thank_params)
			redirect_to surprise_thanks_path, notice: "投稿を更新しました。" 
		else
			flash[:alert] = "投稿に失敗しました。"
			render :edit
		end
	end

	def destroy
		thank = SurpriseThank.find(params[:id]).destroy
		redirect_to surprise_thanks_path, notice: "投稿を削除しました。"
	end

	private

	def thank_params
		params.require(:surprise_thank).permit(:title, :image, :episode, :dear_name).merge(user: current_user)
	end
end
