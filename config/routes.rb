Rails.application.routes.draw do
  get 'chat_rooms/show'

  mount ActionCable.server => '/cable'
  
  resources :chat_rooms, only: [:show, :create] do
    resources :messages, only: [:create]
  end
  
  # root "chat_rooms#show", id: 1  # Change 1 to an existing chat room ID
  root to: redirect("/chat_rooms/1")  # Change 1 to an existing ChatRoom ID
  # root to: "home#redirect_to_chat_room"

  # resources :books
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # # Defines the root path route ("/")
  # root "books#index"
  # get '/example', to: 'example#some_action'
end
