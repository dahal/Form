Rails.application.routes.draw do
  draw :api
  post 's/:id', to: 'api/v1/submissions#create'
end
