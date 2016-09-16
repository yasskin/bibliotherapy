require 'rails_helper'

describe "the delete a topic process" do
  it "deletes an existing topic" do
    topic = FactoryGirl.create(:topic)
    visit topics_path
    click_link 'Love'
    click_link 'Delete'
    expect(page).to have_no_content 'Love'
    expect(page).to have_content 'Topic successfully deleted!'
  end
end
