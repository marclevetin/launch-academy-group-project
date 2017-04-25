require 'rails_helper'

feature "A user can add omelettes" do

  context "a user is filling out the form" do

    sparky = RegUser.create(
      first_name: 'Sparky',
      last_name: 'Yolkerham',
      email: 'sparky@gmail.com',
      password: 'password'
    )

    scenario "the page loads with picture" do
      visit new_reg_user_omelette_path(sparky)

      fill_in 'Title', with: 'Yummy!'
      fill_in 'Description', with: 'Oh, so very yummy.'
      fill_in 'Ingredients', with: 'Peppers and onions'
      attach_file :photo, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Create Omelette'

      visit reg_user_path(RegUser.find_by(email:'sparky@gmail.com'))

      expect(page).to have_content("Yummy!")
      expect(page).to have_content("Oh, so very yummy")
      expect(page).to have_content("Peppers and onions")
      expect(page).to have_css("img[src*='photo.png']")
    end

    scenario "the form can be completed - happy path" do
      visit new_reg_user_omelette_path(sparky)

      expect(page).to have_content("expected text")
      expect(page).to_not have_content(expected value)
    end

    scenario "title is required" do
      fill_in 'Description', with: 'Oh, so very yummy.'
      fill_in 'Ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "description is required" do
      fill_in 'Title', with: 'Yummy!'
      fill_in 'Ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "ingredients are required" do
      fill_in 'Title', with: 'Yummy!'
      fill_in 'Description', with: 'Oh, so very yummy.'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "photo is optional" do
      visit new_reg_user_omelette_path(sparky)

      fill_in 'Title', with: 'Yummy!'
      fill_in 'Description', with: 'Oh, so very yummy.'
      fill_in 'Ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'

      visit reg_user_path(RegUser.find_by(email:'sparky@gmail.com'))

      expect(page).to have_content("Yummy!")
      expect(page).to have_content("Oh, so very yummy")
      expect(page).to have_content("Peppers and onions")
    end
  end
end
