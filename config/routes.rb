Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  draw :api
  draw :dashboard
  post 's/:form_id', to: 'api/v1/submissions#create'
end
