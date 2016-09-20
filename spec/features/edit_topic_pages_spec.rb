require 'rails_helper'

describe "the edit a topic process" do
  it "edits a new topic", js: true do
    visit topics_path
    click_link 'New Topic'
    fill_in 'Name', :with => 'Anxieties'
    click_on "Create Topic"
    click_link 'Anxieties'
    click_link 'Update Topic'
    fill_in 'Name', :with => 'Anxiety'
    click_on 'Update Topic'
    expect(page).to have_content 'Anxiety'
  end

  it "gives error when no name is entered" do
    visit topics_path
    click_link 'New Topic'
    fill_in 'Name', :with => 'Anxieties'
    click_on "Create Topic"
    click_link 'Anxieties'
    click_link 'Update Topic'
    fill_in 'Name', :with => ''
    click_on 'Update Topic'
    expect(page).to have_content 'errors'
  end
end
