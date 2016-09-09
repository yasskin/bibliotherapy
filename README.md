# Bibliotherapy

### Ruby on Rails Basics Independent Project

This README would normally document whatever steps are necessary to get the
application up and running.

Below are the objectives the instructor will use to review your code with you next week.

Does your code meet general coding standards (commits, spacing, naming, etc)?
Is there thorough test coverage - unit and integration?
Do your routes follow proper convention including a root route?
Is your application logic in the models (not the controller)?
Did you use success and error flash messages?
Are form and route helpers present and functioning?
Does the app use the asset pipeline for Bootstrap/CSS?
Does the application work?
Are you able to discuss your code with your instructor using the correct terminology?

Prefix Verb   URI Pattern                                Controller#Action
topic_cures GET    /topics/:topic_id/cures(.:format)          cures#index
       POST   /topics/:topic_id/cures(.:format)          cures#create
new_topic_cure GET    /topics/:topic_id/cures/new(.:format)      cures#new
edit_topic_cure GET    /topics/:topic_id/cures/:id/edit(.:format) cures#edit
topic_cure GET    /topics/:topic_id/cures/:id(.:format)      cures#show
       PATCH  /topics/:topic_id/cures/:id(.:format)      cures#update
       PUT    /topics/:topic_id/cures/:id(.:format)      cures#update
       DELETE /topics/:topic_id/cures/:id(.:format)      cures#destroy
topics GET    /topics(.:format)                          topics#index
       POST   /topics(.:format)                          topics#create
new_topic GET    /topics/new(.:format)                      topics#new
edit_topic GET    /topics/:id/edit(.:format)                 topics#edit
 topic GET    /topics/:id(.:format)                      topics#show
       PATCH  /topics/:id(.:format)                      topics#update
       PUT    /topics/:id(.:format)                      topics#update
       DELETE /topics/:id(.:format)                      topics#destroy

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
