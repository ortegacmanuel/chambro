Rails.application.routes.draw do

  resources :messages
  resources :chat_rooms
  devise_for :users
  root to: "pages#home"

  get "slides/about", to: "slides#about", as: "slides_about"
  get "slides/http-protocol", to: "slides#http_protocol", as: "slides_http_protocol"
  get "slides/websocket-protocol", to: "slides#websocket_protocol", as: "slides_websocket_protocol"
  get "slides/demo", to: "slides#demo", as: "slides_demo"
  get "slides/create-channel", to: "slides#create_channel", as: "slides_create_channel"
  get "slides/subscribe-channel", to: "slides#subscribe_channel", as: "slides_subscribe_channel"
  get "slides/broadcast-channel", to: "slides#broadcast_channel", as: "slides_broadcast_channel"
  get "slides/rails_details", to: "slides#rails_details", as: "slides_rails_details"
  get "slides/more", to: "slides#more", as: "slides_more"
end
