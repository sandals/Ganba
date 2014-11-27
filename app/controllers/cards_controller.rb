class CardsController < ApplicationController
	before_filter :find_deck

	def show
		@card = @deck.cards.find(params[:id])
	end

	def new
		@card = @deck.cards.new
	end

	def create
		@card = @deck.cards.new(card_params)
		@card.save

		redirect_to @deck
	end

	def check_answer
		@card = @deck.cards.find(params[:id])

		if @card.back == params[:card][:back]
			redirect_to @deck, notice: "Correct!"
		else
			redirect_to @deck, notice: "Incorrect!"
		end
	end

	private

	def card_params
		params.require(:card).permit(:front, :back)
	end

	def find_deck
		@deck = Deck.find(params[:deck_id])
	end
end
