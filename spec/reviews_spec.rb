require 'rails_helper'

feature "Reviews" do

  context "Walking through needed CRUD actions" do

    scenario "Index page shows correct content" do

      
      expect(page).to have_content("expected text")
      expect(page).to_not have_content(expected value)
    end
  end
end
