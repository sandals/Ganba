require "rails_helper"

feature "User views a card" do
	scenario "successfully" do
		sign_in

		create_deck "Japanese"
		
		click_link "Create card"

		fill_in "Front", with: "Baka"
		fill_in "Back", with: "Stupid"
		click_button "Submit"

		click_link "Baka"
		
		expect(page).to have_css "h1", text: "Baka"
	end
end
