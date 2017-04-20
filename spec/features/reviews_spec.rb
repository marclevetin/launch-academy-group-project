require 'rails_helper'

feature "Reviews" do

  context "Walking through needed CRUD actions" do

    scenario "Review page shows correct content" do
      user = FactoryGirl.create(:user)

      visit user_reviews_path(user)

      expect(page).to have_content("Reviews Index page")
    end

    scenario "New Review is added successfully" do
      review = FactoryGirl.create(:review)

      visit new_user_review_path(review.user)

      fill_in "title", with: review.title
      fill_in "body", with: review.body
      fill_in "image_path", with: review.image_path

      click_button "Create Review"

      expect(page).to have_content("Reviews Index page")
      expect(page).to have_content(review.title)
      expect(page).to have_content(review.body)
      expect(page).to have_content(review.image_path)
    end

    scenario "New Review is NOT added successfully" do
      review = FactoryGirl.create(:review)

      visit new_user_review_path(review.user)

      click_button "Create Review"

      expect(page).to have_content("Review not created.  Try again.")
    end
  end
end
