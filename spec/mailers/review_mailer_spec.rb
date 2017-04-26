require 'rails_helper'

feature 'email sent upon new review' do

  scenario "specifies valid review" do
      ActionMailer::Base.deliveries.clear
      # user = FactoryGirl.create(:reg_user)
      # review = FactoryGirl.create(:review)
      ActionMailer::Base.deliveries = []

      visit new_reg_user_review_path(user)
      fill_in "title", with: "Denver omelette review"
      fill_in "body", with: "This omelette is GOOD!"
      fill_in "image_path",
        with: "http://www.seriouseats.com/recipes/assets_c/2011/05/20110511-127355-dinner-tonight-denver-omelet-thumb-625xauto-159404.jpg"
      click_button "Create Review"
      expect(page).to have_content("Review successfully added")

      expect(ActionMailer::Base.deliveries.size).to eql(0)
       last_email = ActionMailer::Base.deliveries.last
       expect(last_email).to have_subject('New Review for #{review.omelette.name}')
       expect(last_email).to deliver_to(email)
       expect(ActionMailer::Base.deliveries.count).to eq(0)
  end
end
