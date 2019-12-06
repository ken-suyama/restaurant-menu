Rails.application.routes.draw do

  root to: "menus#index"

  resources :menus, only: [:index, :show] do
    resources :comments, only: [:new, :create]
  end
end
