require 'rails_helper'

describe "the edit an ailment process" do
  it "edits a ailment", js: true do
    topic = FactoryGirl.create(:topic)
    visit topics_path
    click_link 'Love'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => 'Lovesick'
    click_on 'Create Ailment'
    click_on 'Edit'
    fill_in 'Description', :with => 'Lovesickness'
    click_on 'Update Ailment'
    expect(page).to have_content 'Lovesickness'
  end

  it "gives error when no description is entered", js: true do
    topic = FactoryGirl.create(:topic)
    visit topics_path
    click_link 'Love'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => 'Lovesick'
    click_on 'Create Ailment'
    click_on 'Edit'
    fill_in 'Description', :with => ''
    click_button 'Update Ailment'
    expect(page).to have_content 'errors'
  end
end
