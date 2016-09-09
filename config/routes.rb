Rails.application.routes.draw do
  resources :topics do
    resources :ailments
  end
  
end
