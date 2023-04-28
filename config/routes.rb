Rails.application.routes.draw do
  devise_for :users
  as :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    delete '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: "pages#home"
  resources :paintings do
    resources :reviews, only: [:create]
  end
end
