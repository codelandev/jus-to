Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root 'pages#home'

  get :sobre, to: 'pages#about', as: :about
  get :styleguide, to: 'pages#styleguide'
end
