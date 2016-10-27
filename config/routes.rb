Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :legal_cases
resources :messages
resources :profiles
resources :agents

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root 'pages#home'

  get :sobre, to: 'pages#about', as: :about
  get :styleguide, to: 'pages#styleguide'

  get '/perfil', to: 'profile#edit', as: :profile
  patch '/perfil', to: 'profile#update', as: :update_profile

  get '/casos', to: 'legal_cases#index', as: :legal_cases
  post '/casos', to: 'legal_cases#create', as: nil
  get '/casos/novo', to: 'legal_cases#new', as: :new_legal_case
  get '/casos/:id', to: 'legal_cases#show', as: :legal_case
  post '/casos/:case_id/mensagens', to: 'messages#create', as: :legal_case_messages
end
