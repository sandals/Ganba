require "rails_helper"

feature "User answers card" do
	scenario "Correctly" do
		sign_in
		create_card "Japanese", "Baka", "Stupid"
		click_link "Baka"

		fill_in "Back", with: "Stupid"
		click_button "Answer"

		expect(page).to have_css "p", text: "Correct!"
	end

	scenario "Incorrectly" do
		sign_in
		create_card "Japanese", "Baka", "Stupid"
		click_link "Baka"

		fill_in "Back", with: "Smart"
		click_button "Answer"

		expect(page).to have_css "p", text: "Incorrect!"
	end
end
