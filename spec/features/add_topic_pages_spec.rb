require 'rails_helper'

describe "the add a topic process" do
  it "adds a new topic", js: true do
    visit topics_path
    click_link 'New Topic'
    fill_in 'Name', :with => 'Anxiety'
    click_on 'Create Topic'
    expect(page).to have_content 'Anxiety'
  end

  it "gives error when no name is entered", js: true do
    visit topics_path
    click_link 'New Topic'
    fill_in 'Name', :with => ''
    click_on 'Create Topic'
    expect(page).to have_content 'Name can\'t be blank'
  end
end
