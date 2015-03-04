Rails.application.routes.draw do
  require 'sidekiq/web'

  root 'welcome#index'
  devise_for :users

  draw :api
  draw :dashboard
  post 's/:form_id', to: 'api/v1/submissions#create'

  # Sidekiq route
  mount Sidekiq::Web, at: 'admin/sidekiq'
end
