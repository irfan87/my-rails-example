Rails.application.routes.draw do
  resources :starships
  get 'admin/hacker_list'
  get 'starships/create_your_own_starship'

  devise_for :admins
  devise_for :hackers
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
