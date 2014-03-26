require 'spec_helper'

feature "Sign up to be notified when app is ready" do 
	background do 

	end

	scenario "express my interest" do 
		visit '/'

		# save_and_open_page

		within("div.input-group") do 
			fill_in "alpha_user_email", :with => "test@test.com"
		end
		click_button 'Remind Me'

		expect(page).to have_content 'Thank You for your showing your interest'
	end

	scenario "your email has already been taken" do 
		visit "/"

		2.times do 
			within("div.input-group") do 
				fill_in "alpha_user_email", :with => "test@test.com"
			end
			click_button 'Remind Me'
		end

		expect(page).to have_content "Email has already been taken"
	end
end