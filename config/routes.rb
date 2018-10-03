Rails.application.routes.draw do
  
  devise_for  :users,
              controllers: {
                sessions: 'sessions',
                registrations: 'registrations'
              }

  devise_scope :registrations do
    get "/registrations", to: 'devise/registrations#new'
    post "/registrations", to: 'devise/registrations#create'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :registrations

  resources :posts do
    resources :comments
    resources :likes
  end

  root 'posts#index'

end
