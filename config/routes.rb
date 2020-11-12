Rails.application.routes.draw do
  resources :availabilities
  resources :villagers
  resources :bugs
  resources :fish
  resources :users, only: [:index, :create]
  resources :user_villagers
  resources :user_bugs
  get('/users/:name', to: 'users#show_alt')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
