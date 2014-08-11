Rails.application.routes.draw do
  root 'projects#index'
  resources :projects do
    resources :tasks, only: [:new, :create]
  end
end
