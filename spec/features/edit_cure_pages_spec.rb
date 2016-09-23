require 'rails_helper'

describe "the edit a cure process" do
  it "edits a cure" do
    cure = FactoryGirl.create(:cure)
    visit topics_path
    click_link 'Love'
    click_link 'Jealousy'
    click_link 'Edit'
    fill_in 'Symptom', :with => "Love is making you lovesick"
    click_button 'Update Cure'
    expect(page).to have_content "lovesick"
  end
end
