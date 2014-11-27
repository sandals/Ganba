module Features
	def create_card(deck, front, back)
		create_deck deck
		click_link "Create card"
		fill_in "Front", with: front
		fill_in "Back", with: back
		click_button "Submit"
	end
end
