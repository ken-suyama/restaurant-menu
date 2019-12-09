class MenusController < ApplicationController
  
  before_action :set_menu, only: [:show, :add_to_order]

  def index
    @menus = Menu.all
    @carts = Cart.all
    if @carts == nil
      Cart.create
    end

  end

  def show
    @comment = Comment.new
    @comments = @menu.comments
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

end
