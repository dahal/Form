namespace :dashboard do
  get '/', to: 'base#index'
  resources :foms , path: :f do
    resources :submissions, path: :s
  end
end
