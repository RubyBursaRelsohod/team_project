Rails.application.routes.draw do
  get 'profile/index'

  devise_for :users, controllers: { registrations: 'registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'test#index'

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :saxophones, concerns: :paginatable
  resources :violins, concerns: :paginatable
  resources :guitars, concerns: :paginatable
  resources :pianos, concerns: :paginatable

  resources :users, only: [:show]

  resources :about, only: [:index]

  resources :products, only: [:show] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  resources :questions, only: [:index]

  resources :cart, only: [:index]

  scope path_names: { new: 'new_message',
                      create: 'create_message',
                      index: 'support' } do
    resources :messages, path: 'support', only: [:index, :new, :create]
  end
end
