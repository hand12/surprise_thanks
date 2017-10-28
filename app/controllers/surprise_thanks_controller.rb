class SurpriseThanksController < ApplicationController
	def index
	end

	def new
		@thank = SurpriseThank.new
	end
end
