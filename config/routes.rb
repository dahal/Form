Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  draw :api
  post 's/:form_id', to: 'api/v1/submissions#create'
end
