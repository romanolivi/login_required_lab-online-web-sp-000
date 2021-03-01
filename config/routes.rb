Rails.application.routes.draw do
  
  root to: 'sessions#new'
  get "/secret" => "secrets#show"
  get "/login" => 'sessions#new'
  post "/login" => 'sessions#create'
  get "/home" => 'applications#home'
  post "/logout" => 'sessions#destroy'

end
