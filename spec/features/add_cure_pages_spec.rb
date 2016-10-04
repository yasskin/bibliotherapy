require 'rails_helper'

describe "the add a cure process" do
  it "adds a cure", js: true do
    ailment = FactoryGirl.create(:ailment)
    visit topics_path
    click_link 'Love'
    click_link 'Jealousy'
    click_link 'Add a Bibliographic Cure'
    fill_in 'Symptom', :with => 'Love is making you sick'
    fill_in 'Headline', :with => 'Cures for Lovesickness'
    fill_in 'Therapy', :with => 'Regain reason'
    fill_in 'Author', :with => 'Plato'
    fill_in 'Book title', :with => 'Symposium'
    fill_in 'Book cover', :with => 'https://www.amazon.com/Birth-Love-Novel-Joanna-Kavenna-ebook/dp/B003H3IOL4/ref=as_li_ss_il?s=books&ie=UTF8&qid=1475605857&sr=1-1&keywords=the+birth+of+love+kavenna&linkCode=li2&tag=timeoutbooks-20&linkId=462eedbcb8cadbcfa62016d5ab4fc81e'
    click_button 'Create Cure'
    expect(page).to have_content 'Cure successfully created!'
  end

  it "gives an error when no description is entered", js: true do
    ailment = FactoryGirl.create(:ailment)
    visit topics_path
    click_link 'Love'
    click_link 'Jealousy'
    click_link 'Add a Bibliographic Cure'
    fill_in 'Symptom', :with => ''
    fill_in 'Headline', :with => 'Cures for Amour'
    fill_in 'Therapy', :with => 'Regain reason'
    fill_in 'Author', :with => 'Plato'
    fill_in 'Book title', :with => 'Symposium'
    fill_in 'Book cover', :with => 'https://www.amazon.com/Birth-Love-Novel-Joanna-Kavenna-ebook/dp/B003H3IOL4/ref=as_li_ss_il?s=books&ie=UTF8&qid=1475605857&sr=1-1&keywords=the+birth+of+love+kavenna&linkCode=li2&tag=timeoutbooks-20&linkId=462eedbcb8cadbcfa62016d5ab4fc81e'
    click_button 'Create Cure'
    expect(page).to have_content 'errors'
  end

end
