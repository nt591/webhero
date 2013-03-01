Webhero::Application.routes.draw do
  devise_for :users

  resources :users

  match '/auth/:provider/callback', to: 'sessions#create', as: 'new_session'

  root :to => 'welcome#index'
end
