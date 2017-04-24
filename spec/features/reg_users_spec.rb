require 'rails_helper'

feature "Registered Users" do

  context "A user needs to change their password or otherwise update their profile" do

    scenario "Show page appears" do
      sparky = RegUser.create(
        first_name: 'Sparky',
        last_name: 'Yolkerham',
        email: 'sparky@gmail.com',
        password: 'password'
      )

      visit reg_user_path(sparky)

      expect(page).to have_content("Show page!")

    end

    scenario "Show page has an avatar" do
      expect(page).to have_css("img[src*='photo.png']")
    end
  end
end
