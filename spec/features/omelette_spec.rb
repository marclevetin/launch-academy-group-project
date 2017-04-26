require 'rails_helper'

feature "A user interacts with omelettes" do

  context "a user fills out the form" do

    scenario "user cannot add omelette unless signed in" do
      user = FactoryGirl.create(:reg_user)

      visit new_reg_user_omelette_path(user)

      expect(page).to have_content("Log in")
    end

    scenario "form can be completed with photo, happy path" do
      user = FactoryGirl.create(:reg_user)
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      attach_file :photo, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Create Omelette'

      expect(page).to have_content("Yummy!")
      expect(page).to have_content("Oh, so very yummy")
      expect(page).to have_content("Peppers and onions")
      expect(page).to have_css("img[src*='photo.png']")
    end

    scenario "title is required" do
      user = FactoryGirl.create(:reg_user)
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "description is required" do
      user = FactoryGirl.create(:reg_user)
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "ingredients are required" do
      user = FactoryGirl.create(:reg_user)
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      click_button 'Create Omelette'
      expect(page).to have_content("Omelette not created. Try again.")
    end

    scenario "photo is optional" do
      user = FactoryGirl.create(:reg_user)
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      click_button 'Create Omelette'

      expect(page).to have_content("Yummy!")
      expect(page).to have_content("Oh, so very yummy")
      expect(page).to have_content("Peppers and onions")
      expect(page).not_to have_css("img[src*='photo.png']")

    end
  end

  context "deleting omelettes" do
    scenario "a link to delete an omelette appears for admins" do
      user = FactoryGirl.create(:reg_user, role: "admin")
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      attach_file :photo, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Create Omelette'

      expect(page).to have_content("Trash omelette")
    end

    scenario "if not an admin, destroy link does not appear" do
      user = FactoryGirl.create(:reg_user, role: "member")
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      attach_file :photo, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Create Omelette'

      expect(page).to_not have_content("Trash omelette")
    end

    scenario "destroying an omelette redirects to omelette index page" do
      user = FactoryGirl.create(:reg_user, role: "admin")
      login_as(user, scope: :reg_user)

      visit new_reg_user_omelette_path(user)

      fill_in 'title', with: 'Yummy!'
      fill_in 'description', with: 'Oh, so very yummy.'
      fill_in 'ingredients', with: 'Peppers and onions'
      attach_file :photo, "#{Rails.root}/spec/support/images/photo.png"
      click_button 'Create Omelette'

      click_link 'Trash omelette'

      expect(page).to have_content("Omelettes Index")
    end

  end

end