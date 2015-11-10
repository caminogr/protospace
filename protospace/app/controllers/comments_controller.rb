class CommentsController < ApplicationController
  def create
    current_user.comments.create(comment_params)
    redirect_to prototype_path(params[:prototype_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(prototype_id: params[:prototype_id])
  end
end
