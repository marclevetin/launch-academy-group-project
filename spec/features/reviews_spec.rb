require 'rails_helper'

feature "Reviews" do

  context "Walking through needed CRUD actions" do

    scenario "Review page shows correct content" do
      user = FactoryGirl.create(:user)

      visit user_reviews_path(user)

      expect(page).to have_content("Reviews Index page")
    end

    scenario "New Review is added successfully" do
      user = FactoryGirl.create(:user)

      visit new_user_review_path(user)

      fill_in "title", with: "Denver omelette review"
      fill_in "body", with: "This omelette is GOOD!"
      fill_in "image_path",
      with: "http://www.seriouseats.com/recipes/assets_c/2011/05/20110511-127355-dinner-tonight-denver-omelet-thumb-625xauto-159404.jpg"

      click_button "Create Review"

      expect(page).to have_content("Reviews Index page")
      expect(page).to have_content("Denver omelette review")
      expect(page).to have_content("This omelette is GOOD!")
    end

    scenario "New Review is NOT added successfully" do
      review = FactoryGirl.create(:review)

      visit new_user_review_path(review.user)

      click_button "Create Review"

      expect(page).to have_content("Review not created.  Try again.")
    end
  end
end
