require 'rails_helper'

feature "feature description" do

  context "context description" do
    let(:symbol_validated_later) { create :symbol_validated_later
    let!(:symbol_validated_now) { create :symbol_validated_now, field: value }

    before do
      visit "path"
    end

    scenario "scenario description" do
      expect(page).to have_content("expected text")
      expect(page).to_not have_content(expected value)
    end
  end
end
