Rails.application.routes.draw do

  root to: "menus#index"

  resources :cart_items
  resources :carts, only: [:show, :edit, :new, :create, :destroy]
  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'
  resources :menus, only: [:index, :show] do
    resources :comments, only: [:new, :create]
  end
end
