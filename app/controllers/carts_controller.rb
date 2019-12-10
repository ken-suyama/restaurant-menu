class CartsController < ApplicationController

  before_action :setup_cart_item!, only: [:add_item, :update_item, :delete_item]

  def show
    @cart_items = current_cart.cart_items
    @total = 0
    @cart_items.each do |item|
      sub_total = ((item.menu[:price]).to_i) * ((item[:quantity]).to_i)
      @total += sub_total
    end
  end

  def add_item
    if @cart_item.blank?
      @cart_item = current_cart.cart_items.build(menu_id: params[:menu_id])
    end
    @cart_item.quantity += 1
    @cart_item.quantity += params[:quantity].to_i
    @cart_item.save
  end

  def update_item
    @cart_item.update(quantity: params[:quantity].to_i)
    redirect_to current_cart
  end

  def delete_item
    @cart_item.destroy
    redirect_to current_cart
  end

  private

  def setup_cart_item!
    @cart_item = current_cart.cart_items.find_by(menu_id: params[:menu_id])
  end
end
