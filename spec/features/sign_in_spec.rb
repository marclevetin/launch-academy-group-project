require 'rails_helper'

feature 'user signs in' do

  context 'user signs in' do

    let!(:reguser) do
      RegUser.create(
      first_name: 'Eggy',
      last_name: 'McEggerson',
      email: 'eggs@eggs.com',
      password: 'password'
      )
    end

    scenario "specifying valid and required info" do
      visit root_path
      click_link 'Sign in'
      fill_in 'First name', with: 'Eggy'
      fill_in 'Last name', with: 'McEggerson'
      fill_in 'Email', with: 'eggs@eggs.com'
      fill_in 'Password', with: 'password'

      click_button 'Log in'

      expect(page).to have_content("Signed in successfully.")
      expect(page).to have_content("Sign out")
    end

    scenario "password is not supplied" do
      visit root_path
      click_link 'Sign in'
      fill_in 'First name', with: 'Eggy'
      fill_in 'Last name', with: 'McEggerson'
      fill_in 'Email', with: 'eggs@eggs.com'

      click_button 'Log in'

      expect(page).to have_content("Invalid Email or password.")
    end

    scenario "password is incorrect" do
      visit root_path
      click_link 'Sign in'
      fill_in 'First name', with: 'Eggy'
      fill_in 'Last name', with: 'McEggerson'
      fill_in 'Email', with: 'eggs@eggs.com'
      fill_in 'Password', with: 'abc'

      click_button 'Log in'

      expect(page).to have_content("Invalid Email or password.")
    end
  end
end
