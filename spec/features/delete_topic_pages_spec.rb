require 'rails_helper'

describe "the delete a topic process" do
  it "deletes an existing topic" do
    visit topics_path
    click_link 'New Topic'
    fill_in 'Name', :with => 'Bad Topic'
    click_on "Create Topic"
    click_link 'Bad Topic'
    click_link 'Delete'
    expect(page).to have_no_content 'Bad Topic'
  end
end
