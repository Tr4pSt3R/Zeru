require "spec_helper"

feature "user creates a memoid" do 

  scenario "shows me how many day(s) until next release" do 
    visit new_memoid_url
    
    within("form") do 
      fill_in "memoid_content", with: "Count it all joy when you meet with trials of various kinds"
      click_button "Create Memoid"
    end
    expect(page).to have_content("You will see me again in 1 day")
  end

  scenario "" do 

  end
end
