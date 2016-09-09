require 'rails_helper'

describe "the add a ailment process" do
  it "adds a ailment" do
    topic = Topic.create(:name => 'Home')
    visit topics_path
    click_link 'Home'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => 'Share the Chores'
    click_on 'Create Ailment'
    expect(page).to have_content 'Share the Chores'
  end

  it "gives error when no description is entered" do
    topic = Topic.create(:name => 'Home')
    ailment = Ailment.create(:description => 'Washing the dishes', :topic_id => topic.id)
    visit topics_path
    click_link 'Home'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => ''
    click_button 'Create Ailment'
    expect(page).to have_content 'errors'
  end
end
