Rails.application.routes.draw do

  root                'microme#home'
  get    'help'    => 'microme#help'
  get    'about'   => 'microme#about'
  get    'contact' => 'microme#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
