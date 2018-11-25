Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  devise_for :users  

  get '/friends/:id', to: 'friends#show'
end
