class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  # , dependent: :destroy
  has_many :menus, through: :cart_items
end
