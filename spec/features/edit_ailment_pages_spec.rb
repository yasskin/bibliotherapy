require 'rails_helper'

describe "the edit a ailment process" do
  it "edits a ailment" do
    topic = Topic.create(:name => 'Love')
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

  it "gives error when no description is entered" do
    topic = Topic.create(:name => 'Love')
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
