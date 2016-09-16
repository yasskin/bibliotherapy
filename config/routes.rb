Rails.application.routes.draw do

  devise_for :users
  root :to => 'topics#index'

  resources :topics do
    resources :ailments
  end

  resources :ailments do
    resources :cures
  end

end
