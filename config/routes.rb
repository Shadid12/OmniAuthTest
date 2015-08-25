Rails.application.routes.draw do
get '/auth/:provider/callback', to: 'sessions#create'
get '/auth/failure', to: 'sessions#auth_fail'
get '/sign_out', to: 'sessions#destroy', as: :sign_out

root 'static#index'

resources :comments, only: [:new, :create]
end
