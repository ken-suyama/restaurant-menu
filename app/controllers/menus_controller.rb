class MenusController < ApplicationController
  
  before_action :set_menu, only: [:show]
  
  def index
    @menus = Menu.all
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
