Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "test#index"

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :saxophones, concerns: :paginatable
  resources :violins, concerns: :paginatable

  resources :guitars, concerns: :paginatable
  resources :pianos, concerns: :paginatable
end
