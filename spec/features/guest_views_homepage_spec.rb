require "rails_helper"

feature "Guest views homepage" do
	scenario "homepage displays application title" do
		visit root_path

		expect(page).to have_css 'h1', text: 'Hello!'
	end

	scenario "homepage displays correct title" do
		visit root_path

		expect(page).to have_title "Ganba Flashcards!"
	end
end
