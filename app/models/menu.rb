class Menu < ApplicationRecord
  has_many :comments
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items
end
