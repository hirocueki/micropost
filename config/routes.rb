Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  root 'homes#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show] do
    member do
      get :following, :followers
    end
    resources :items, except: [:index] do
      resources :comments
    end
  end
end
