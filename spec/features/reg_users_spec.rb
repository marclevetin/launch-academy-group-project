require 'rails_helper'

feature "Registered Users" do

  context "A user needs to change their password or otherwise update their profile" do

    scenario "Show page appears" do
      sparky = User.create(
        name: 'Sparky',
        email: 'sparky@gmail.com',
        encrypted_password: 'w',
        role: 'a'
      )

      visit user_path(sparky)

      expect(page).to have_content("Show page!")

    end
  end
end
