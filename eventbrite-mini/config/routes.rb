Rails.application.routes.draw do

  root "events#index"

  resources :invites
  resources :people do
    resources :events
  end

  resources :events
end
