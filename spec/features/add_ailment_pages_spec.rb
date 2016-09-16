require 'rails_helper'

describe "the add a ailment process" do
  it "adds a ailment" do
    topic = FactoryGirl.create(:topic)
    visit topics_path
    click_link 'Love'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => 'Lovesick'
    click_on 'Create Ailment'
    expect(page).to have_content 'Lovesick'
  end

  it "gives error when no description is entered" do
    topic = FactoryGirl.create(:topic)
    ailment = Ailment.create(:description => 'Lovesick', :topic_id => topic.id)
    visit topics_path
    click_link 'Love'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => ''
    click_button 'Create Ailment'
    expect(page).to have_content 'errors'
  end
end
