require 'rails_helper'

describe "the delete a topic process" do
  it "deletes an existing topic" do
    topic = Topic.create(:name => 'Desire')
    visit topics_path
    click_link 'Desire'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => 'Cover thy Neighbors Wife'
    click_on "Create Ailment"
    click_link 'Delete'
    expect(page).to have_no_content 'Cover thy Neighbors Wife'
  end
end
