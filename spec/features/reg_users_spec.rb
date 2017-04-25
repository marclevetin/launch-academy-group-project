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
      visit root_path
      click_link 'Create account'
      fill_in 'First name', with: 'Eggy'
      fill_in 'Last name', with: 'McEggerson'
      fill_in 'Email', with: 'eggs@eggs.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      attach_file :avatar, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Sign up'
      visit reg_user_path(RegUser.find_by(email:'eggs@eggs.com'))

      expect(page).to have_css("img[src*='photo.png']")
    end
  end
end
