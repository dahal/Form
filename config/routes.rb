Rails.application.routes.draw do
  draw :api
  post 's/:form_id', to: 'api/v1/submissions#create'
end
