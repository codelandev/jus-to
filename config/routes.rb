Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root 'pages#home'

  get :sobre, to: 'pages#about', as: :about
  get :styleguide, to: 'pages#styleguide'

  get '/perfil', to: 'profile#edit', as: :profile
  patch '/perfil', to: 'profile#update', as: :update_profile
end
