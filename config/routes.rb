Rails.application.routes.draw do
  root 'welcome#index'

  draw :api
  post 's/:form_id', to: 'api/v1/submissions#create'
end
