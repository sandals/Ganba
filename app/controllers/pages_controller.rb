class PagesController < ApplicationController
	def index
		if signed_in?
			redirect_to decks_path
		end
	end
end
