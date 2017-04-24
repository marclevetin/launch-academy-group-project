require 'rails_helper'

feature 'user signs in' do

  context 'user signs in' do

    let!(:reguser) { create :RegUser, field: value }

    scenario "specifying valid and required info" do
      visit root_path
      click_link 'Sign in'
      fill_in 'Email', with: 'eggs@eggs.com'
      fill_in 'Password', with: 'password'

      click_button 'Log in'

      expect(page).to have_content("Success")
      expect(page).to have_content("Sign out")
    end

    scenario "password is not supplied" do
      visit root_path
      click_link 'Sign in'
      fill_in 'Email', with: 'eggs@eggs.com'

      click_button 'Log in'

      expect(page).to have_content("Invalid password.")
    end

    scenario "passwords is incorrect" do
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: 'eggs@eggs.com'
      fill_in 'Password', with: 'password'

      click_button 'Log in'

      expect(page).to have_content("Passwords don't match")
    end
  end
end
