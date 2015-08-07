Rails.application.routes.draw do
  devise_for :users, path: ''
  root 'locations#index'

  resources :locations do
    resources :crops
    resources :weather_infos
  end
end
