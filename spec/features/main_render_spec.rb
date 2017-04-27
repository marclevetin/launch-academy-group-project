require 'rails_helper'

feature "Main div of application.html.erb renders" do

  scenario "header shows up on root route" do

    visit root_path

    expect(page).to have_css("img[src*='egglogo-9e5582fefc39148b60a7d691d69fddf16639d4c651a373c70c8e0923a3b09f6c.png']")
  end
end
