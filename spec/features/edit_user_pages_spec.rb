require 'rails_helper'

describe 'the edit user process' do
  it "should edit the user information" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Edit Account'
    fill_in 'Email', :with => 'new@email.com'
    fill_in 'Current password', :with => 'password'
    click_button 'Update'
    expect(page).to have_content 'Your account has been updated successfully.'
  end

  it "should not edit the user information if a parameter is not entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_on 'Edit Account'
    fill_in 'Email', :with => ''
    fill_in 'Current password', :with => ''
    click_on 'Update'
    expect(page).to have_content 'Email can\'t be blank'
    expect(page).to have_content 'Current password can\'t be blank'

  end
end
