Rails.application.routes.draw do
resources :shops
resources :vessels
resources :work_scopes

get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # For details  on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
