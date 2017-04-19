require 'rails_helper'

feature "Users " do

  context "Walking through all of the needed CRUD actions" do

    scenario "New user is added successfully" do

      visit new_user_path

      fill_in "Name", with: "Doug"
      fill_in "Email", with: "doug@fmail.com"
      fill_in "Encrypted password", with: "dougrocksthecasbah"
      fill_in "Role", with: "command dude"

      click_button "Create User"

      expect(page).to have_content("Users Index page")
      expect(page).to have_content("Doug")
    end

    scenario "New user is NOT added successfully" do
      visit new_user_path

      click_button "Create User"

      expect(page).to have_content("User not created.  Try again.")
    end

    scenario "Index page shows correct content" do

      visit users_path

      expect(page).to have_content("Users Index page")
    end

    scenario "Show page appears" do
      sparky = User.create(
        name:'Sparky',
        email:'sparky@gmail.com',
        encrypted_password: 'w',
        role: 'a'
        )
        
      visit user_path(sparky)

      expect(page).to have_content("Show page!")

    end
  end
end
