class CommentsController < ApplicationController

  def create
    
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html {redirect_to menu_path(params[:menu_id])}
      format.json 
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :rate).merge(menu_id: params[:menu_id])
  end
end