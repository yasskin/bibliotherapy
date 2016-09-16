Rails.application.routes.draw do

  devise_for :users
  root :to => 'topics#index'

  resources :topics do
    resources :ailments, :except => [:show, :index]
  end

  resources :ailments do
    resources :cures
  end

end
