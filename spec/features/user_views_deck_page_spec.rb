require "rails_helper"

feature "User views decks" do
	scenario "with no available decks" do
		sign_in

		expect(page).to have_css ".decks p", text: "You haven't created any decks yet!"
	end

	scenario "with many decks" do
		sign_in

		create_deck "Japanese"
		create_deck "Russian"
		create_deck "Spanish"

		visit decks_path

		expect(page).to have_link "Japanese"
	end
end
