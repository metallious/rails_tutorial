Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Custom routes
  get "posts/byuser/:id" => "posts#showByUser"
  post "authenticate" => "authentication#authenticate"
end
