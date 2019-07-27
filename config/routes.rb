Rails.application.routes.draw do
  root 'pages#index'
  get 'home', to: 'pages#index', as: 'home'
  get '/', to: 'pages#index'
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  get 'register', to: 'users#new', as: 'register'
  get 'signup', to: 'users#new', as: 'signup'
  post 'add_friend/:user_id', to: 'users#add_friend', as: 'add_friend'
  resources :cities
  resources :continents
  resources :countries do
    resources :comments do
      resources :likes
      resources :dislikes
    end
  end

  resources :discussions do
    resources :posts
  end
  resources :users do
    member do
      get :friends
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
