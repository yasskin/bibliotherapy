require 'rails_helper'

describe "the add a user process" do
  it "adds a new user", js: true do
    visit new_user_registration_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => 'testpassword'
    fill_in 'Password confirmation', :with => 'testpassword'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome'
  end

  it "gives error when no title is entered" do
    visit new_user_registration_path
    click_on 'Sign up'
    expect(page).to have_content 'errors'
  end
end

describe "user log in" do
  it "allows an existing user to sign in", js: true do
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in "Email", with: "test@email.com"
    fill_in "Password", with: "password"

    click_button "Log in"

    expect(page).to have_content("Signed in successfully.")
  end
end
