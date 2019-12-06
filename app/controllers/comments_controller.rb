class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    #respond_to do |format|
    format.html {redirect_to "/menus/#{menu.id}/"}
      #format.json
  end

  private

  def comment_params
    params.require(:comment).permit(:text,).merge(menu_id: params[:menu_id])
  end
end