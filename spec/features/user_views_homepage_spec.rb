require "rails_helper"

feature "User views homepage" do
	scenario "homepage should redirect to User's decks" do
		sign_in

		expect(page).to have_css 'h1', text: 'Decks'
	end
end
