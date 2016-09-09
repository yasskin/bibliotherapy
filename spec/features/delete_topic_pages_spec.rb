require 'rails_helper'

describe "the delete a topic process" do
  it "deletes an existing topic" do
    topic = Topic.create(:name => 'Bad Topic')
    visit topics_path
    click_link 'Bad Topic'
    click_link 'Add an Ailment'
    fill_in "Description", :with => "Information Overload"
    click_on 'Create Ailment'
    click_link "Delete"
    expect(page).to have_no_content 'Information Overload'
  end
end
