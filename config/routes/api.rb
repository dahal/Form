namespace :api, defaults: { format: :json }  do
  namespace :v1 do
    resources :forms, path: :form do
      resources :submissions
    end
  end
end
