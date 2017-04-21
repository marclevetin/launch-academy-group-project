require 'rails_helper'

feature "Main div of application.html.erb renders" do

  scenario "header shows up on root route" do

    visit root_path

    expect(page).to have_content("Eggxit Review")
  end
end
