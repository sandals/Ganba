class CardsController < ApplicationController
	before_filter :find_deck

	def new
		@card = @deck.cards.new
	end

	def create
		@card = @deck.cards.new(card_params)
		@card.save

		redirect_to @deck
	end

	private

	def card_params
		params.require(:card).permit(:front, :back)
	end

	def find_deck
		@deck = Deck.find(params[:deck_id])
	end
end
