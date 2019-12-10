Rails.application.routes.draw do

  root to: "menus#index"
  
  resources :carts, only: [:show, :edit, :new, :create, :destroy]
  resources :menus, only: [:index, :show] do
    resources :comments, only: [:new, :create]
    resources :cart_items
    post '/add_item' => 'carts#add_item'
    post '/update_item' => 'carts#update_item'
    delete '/delete_item' => 'carts#delete_item'
  end
end
