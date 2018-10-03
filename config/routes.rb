Rails.application.routes.draw do
  
  devise_for  :users,
              controllers: {
                sessions: 'sessions',
                registrations: 'signup'
              }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :registrations

  resources :posts do
    resources :comments
    resources :likes
  end

  root 'posts#index'

end
