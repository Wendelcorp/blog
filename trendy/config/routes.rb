Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts
  root 'posts#index'

  get '/about', to: 'pages#about'
end
