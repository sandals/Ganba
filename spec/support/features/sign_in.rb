module Features
	def sign_in
		visit root_path

		click_on "Sign in"
		click_on "Sign up"

		fill_in "Email", with: "person@example.com"
		fill_in "Password", with: "password"
		click_button "Sign up"
	end
end
