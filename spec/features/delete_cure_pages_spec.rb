require 'rails_helper'

describe "the delete a cure process" do
  it "deletes an exiting cure" do
    cure = FactoryGirl.create(:cure)
    visit topics_path
    click_link 'Love'
    click_link 'Jealousy'
    click_link 'Delete'
    expect(page).to have_content "Cure successfully deleted"
  end
end
