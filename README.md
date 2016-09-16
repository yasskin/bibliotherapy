# Bibliotherapy

### Ruby on Rails Basics Independent Project

#### By Noah Yasskin

#Description

_A web app that guides you to those amazing but often elusive works of literature, both past and present, that have the power to enchant, enrich and inspire._


| Requirements  | Complete  |
| ------------- | ----:|
| Does your code meet general coding standards (commits, spacing, naming, etc)? | -- |
| Is there thorough test coverage - unit and integration? | -- |
| Do your routes follow proper convention including a root route?
 | -- |
| Is your application logic in the models (not the controller)?
 | -- |
| Did you use success and error flash messages?
 | -- |
| Are form and route helpers present and functioning?
 | -- |
| Does the app use the asset pipeline for Bootstrap/CSS?
 | -- |
| Does the application work?
 | -- |

* Ruby version

ruby 2.2.3p173 (2015-08-18 revision 51636)

* System dependencies

* Configuration

1. Clone the repository from GitHub
```
$ https://github.com/yasskin/.git
```
2. bundle
```
$ bundle install
```
3. Set up the Database
* Database initialization
```
$ postgres
```
* Database creation and pre-population
```
$ rake db:create
```
```
$ rake db:migrate db:test:prepare
```
```
$ rake db:seed
```
* Launch the Rails server
```
$ rails server
```

## Known Bugs

* _No known bugs_

## Devise resources

_Devise README_
http://devise.plataformatec.com.br/

_Devise How Tos_
https://github.com/plataformatec/devise/wiki/How-Tos

_How to test with Capybara_
https://github.com/plataformatec/devise/wiki/How-To:-Test-with-Capybara

## Support and contact details

_If you run into any issues or have questions, ideas, or concerns, please feel free to contact Noah:_

* _Noah Yasskin: <a href="mailto:noahyasskin@gmail.com">noahyasskin@gmail.com</a>_

### License

*MIT License*

The MIT License (MIT)
Copyright (c) 2016, Maarja Laineste, Caleb Stokka, Sky Rousse, and Noah Yasskin
https://opensource.org/licenses/MIT
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#


require 'rails_helper'

describe "user log in" do
  it "allows an existing user to sign in" do
    User.create!(email: "me@email.com", password: "password123")

    visit "/users/sign_in"

    fill_in "Email", with: "me@email.com"
    fill_in "Password", with: "password123"

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end

# test the registration process as well.

describe User do
  it "sends an email when the user is created" do
    user = FactoryGirl.create(:user)
    ActionMailer::Base.deliveries.last.to.should eq [user.email]
  end
end
