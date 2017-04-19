require 'rails_helper'

feature "Reviews" do

  context "Walking through needed CRUD actions" do

    scenario "Review page shows correct content" do
      Sparky = User.create!(name:'Sparky', email:'sparky@gmail.com', encrypted_password: 'w', role: 'a')

      visit user_reviews_path(Sparky)

      expect(page).to have_content("Reviews Index page")
    end


  context "Walking through needed CRUD actions" do

    scenario "New Review is added successfully" do
      Sparky = User.create!(name:'Sparky', email:'sparky@gmail.com', encrypted_password: 'w', role: 'a')


      visit new_user_review_path(Sparky)


      fill_in "title", with: "Denver omelette review"
      fill_in "body", with: "This omelette is GOOD!"
      fill_in "image_path", with: "http://www.seriouseats.com/recipes/assets_c/2011/05/20110511-127355-dinner-tonight-denver-omelet-thumb-625xauto-159404.jpg"

      click_button "Create Review"

      expect(page).to have_content("Reviews Index page")
      expect(page).to have_content("Denver omelette review")
      expect(page).to have_content("This omelette is GOOD!")
    end

    scenario "New Review is NOT added successfully" do
      Sparky = User.create!(name:'Sparky', email:'sparky@gmail.com', encrypted_password: 'w', role: 'a')


      visit new_user_review_path(Sparky)

      click_button "Create Review"

      expect(page).to have_content("Review not created.  Try again.")
      end
    end
  end
end
