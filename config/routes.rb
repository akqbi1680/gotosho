Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    # get "sign_in", :to => "users/sessions#new"
    # get "sign_out", :to => "users/sessions#destroy"
  end

  resources :users
  resources :organizations
  resources :projects, only: [:index, :show, :new, :edit, :create, :update]
  resources :rooms, only: [:show, :create]
  resources :messages, only: [:create]

  root 'homes#top'

end