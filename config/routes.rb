Rails.application.routes.draw do
  resources :dvds, only: [:show, :index]

  resources :users do
    resources :dvds
  end

  root "dvds#index"
end
