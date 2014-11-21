module Features
	def create_deck name
		visit decks_path
		click_on "Create Deck"
		fill_in "Name", with: name
		click_button "Submit"
	end
end
