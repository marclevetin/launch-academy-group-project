require 'rails_helper'

feature "A user can add omelettes" do

  context "a user is filling out the form" do

    scenario "the page loads with picture" do
      user = FactoryGirl.create(:reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      attach_file :photo, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Create Omelette'

      # visit reg_user_path(RegUser.find_by(email:'user@gmail.com'))
      save_and_open_page

      expect(page).to have_content("Yummy!")
      expect(page).to have_content("Oh, so very yummy")
      expect(page).to have_content("Peppers and onions")
      expect(page).to have_css("img[src*='photo.png']")
    end

    scenario "the form can be completed - happy path" do
      user = FactoryGirl.create(:reg_user)

      visit new_reg_user_omelette_path(user)

      expect(page).to have_content("expected text")
      expect(page).to_not have_content(expected value)
    end

    scenario "title is required" do
      user = FactoryGirl.create(:reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "description is required" do
      user = FactoryGirl.create(:reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "ingredients are required" do
      user = FactoryGirl.create(:reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "photo is optional" do
      user = FactoryGirl.create(:reg_user)
      
      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'

      visit reg_user_path(RegUser.find_by(email:'user@gmail.com'))

      expect(page).to have_content("Yummy!")
      expect(page).to have_content("Oh, so very yummy")
      expect(page).to have_content("Peppers and onions")
    end
  end
end
