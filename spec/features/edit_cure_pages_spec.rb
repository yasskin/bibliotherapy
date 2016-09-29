require 'rails_helper'

describe "the edit a cure process" do
  it "edits a cure", js: true do
    cure = FactoryGirl.create(:ailment)
    visit topics_path
    click_link 'Love'
    click_link 'Jealousy'
    click_on 'Add a Bibliographic Cure'
    fill_in 'Symptom', :with => 'Love is making you sick'
    fill_in 'Headline', :with => 'Cures for Lovesickness'
    fill_in 'Therapy', :with => 'Regain reason'
    fill_in 'Author', :with => 'Plato'
    fill_in 'Book title', :with => 'Symposium'
    click_button 'Create Cure'
    click_link 'Edit'
    fill_in 'Symptom', :with => 'Love is making you lovesick'
    click_button 'Update Cure'
    expect(page).to have_content "Cure successfully updated!"
  end

  it "gives an error when no symptom is entered", js: true do
    cure = FactoryGirl.create(:ailment)
    visit topics_path
    click_link 'Love'
    click_link 'Jealousy'
    click_on 'Add a Bibliographic Cure'
    fill_in 'Symptom', :with => 'Love is making you sick'
    fill_in 'Headline', :with => 'Cures for Lovesickness'
    fill_in 'Therapy', :with => 'Regain reason'
    fill_in 'Author', :with => 'Plato'
    fill_in 'Book title', :with => 'Symposium'
    click_button 'Create Cure'
    click_link 'Edit'
    fill_in 'Symptom', :with => ''
    click_button 'Update Cure'
    expect(page).to have_content "errors"
  end
end
