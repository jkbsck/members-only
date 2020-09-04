Rails.application.routes.draw do
  resources :comments
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'users/sessions' }
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
end
