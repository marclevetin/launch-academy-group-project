# require 'rails_helper'
#
# feature 'email sent upon new review' do
#
# scenario "specifies valid review" do
#   ActionMailer::Base.deliveries = []
#
#   email = 'user@example.com'
#   visit '/'
#   fill_in 'First Name', with: 'Eggy'
#   fill_in 'Last Name', with: 'McEggerson'
#   fill_in 'Email', with: email
#   click_button 'submit'
#   expect(page).to have_content("Review successfully added")
#
#   expect(ActionMailer::Base.deliveries.size).to eql(1)
#    last_email = ActionMailer::Base.deliveries.last
#    expect(last_email).to have_subject('New Review for #{review.omelette.name}')
#    expect(last_email).to deliver_to(email)
#
# end
