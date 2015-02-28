namespace :api, defaults: { format: :json }  do
  namespace :v1 do
    resources :simpleforms do
      resources :submissions
    end
  end
end
