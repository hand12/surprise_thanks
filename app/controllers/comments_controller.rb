class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		thank = SurpriseThank.find(params[:surprise_thank_id])
		comment = thank.comments.build(comment_params)
		if comment.save
			redirect_to surprise_thank_path(thank), notice: 'コメントしました'
		else
			redirect_to surprise_thank_path(thank), alert: 'コメントを書いてから、投稿ボタンを押してください'
		end
	end

	def edit
		@thank = SurpriseThank.find(params[:surprise_thank_id])
		@comment = Comment.find(params[:id])
	end

	def update
		comment = Comment.find(params[:id])
		if comment.update(comment_params)
			redirect_to surprise_thank_path(comment.surprise_thank), notice: "コメントを修正しました。"
		else
			flash[:alert] = "コメントは空では投稿できません"
			render :edit
		end
	end

	def destroy
		thank = SurpriseThank.find(params[:surprise_thank_id])
		Comment.find(params[:id]).destroy
		redirect_to surprise_thank_path(thank), notice: "コメントを削除しました"
	end

	private

	def comment_params
		params.require(:comment).permit(:text).merge(user: current_user)
	end
end
