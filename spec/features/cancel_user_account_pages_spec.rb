require 'rails_helper'

describe 'the cancel user account process' do
  it "should cancel the user account" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Edit Account'
    click_button 'Cancel my account'
    expect(page).to have_content 'Bye! Your account has been successfully cancelled'
  end

end
