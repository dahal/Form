namespace :api, defaults: { format: :json }  do
  namespace :v1 do
    resources :foms do
      resources :submissions
    end
  end
end
