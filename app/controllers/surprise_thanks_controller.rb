class SurpriseThanksController < ApplicationController
	def index
	end

	def show
		@thank = SurpriseThank.new
	end

	def new
		@thank = SurpriseThank.new
	end
end
