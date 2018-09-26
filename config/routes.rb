Rails.application.routes.draw do
  get '/user' => 'user#index'
  get '/user/new' => 'user#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
end
