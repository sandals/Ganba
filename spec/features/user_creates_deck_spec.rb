require "rails_helper"

feature "User creates deck" do
	scenario "successfully" do
		sign_in
		create_deck "Japanese"

		expect(page).to have_css "h1", text: "Japanese"
	end

	scenario "unsuccessfully" do
		sign_in
		create_deck nil

		expect(page).to have_css "p", text: "Could not create Deck."
	end
end
