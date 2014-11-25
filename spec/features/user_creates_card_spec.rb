require "rails_helper"

feature "User creates a card" do
	scenario "For a brand new deck" do
		sign_in
		
		create_deck "Japanese"

		click_link "Create card"

		fill_in "Front", with: "Baka"
		fill_in "Back", with: "Stupid"
		click_button "Submit"

		expect(page).to have_css ".cards li", text: "Baka"
	end
end
