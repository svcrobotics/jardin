Rails.application.routes.draw do
  get 'home/index'

  resources :types
  resources :familles
  resources :plantes

  get '/chat/ask', to: 'chat#ask'
  post 'chat/submit', to: 'chat#submit', as: 'chat_submit'

  
  get 'rechercher', to: 'plantes#rechercher', as: 'rechercher'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
