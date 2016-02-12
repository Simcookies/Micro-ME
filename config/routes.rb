Rails.application.routes.draw do

  root                'microme#home'
  get    'help'    => 'microme#help'
  get    'about'   => 'microme#about'
  get    'contact' => 'microme#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :microposts, only: [:create, :destroy]
end
