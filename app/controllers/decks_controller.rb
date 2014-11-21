class DecksController < ApplicationController
	def index
		@decks = current_user.decks
	end

	def show
		@deck = Deck.find(params[:id])
	end

	def new
		@deck = current_user.decks.new
	end

	def create
		@deck = current_user.decks.new(deck_params)

		if @deck.save
			redirect_to @deck
		else
			redirect_to decks_path, notice: "Could not create Deck."
		end
	end

	private

	def deck_params
		params.require(:deck).permit(:name)
	end
end
