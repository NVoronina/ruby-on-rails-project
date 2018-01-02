Rails.application.routes.draw do
  root 'main#index'
  resources :posts
  resource :photos
  devise_for :users
  match 'index',         to: 'main#index',           via: 'get'
  match 'user-posts',    to: 'posts#user',           via: 'get'
  match 'add-photo',     to: 'posts#showphoto',      via: 'get'
  match 'help',          to: 'main#help',            via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'posts:index'
end
