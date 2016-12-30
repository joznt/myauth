Rails.application.routes.draw do
  get 'pages/index'
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  post 'login' => 'sessions#create'
  get 'profile' => 'pages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
end
