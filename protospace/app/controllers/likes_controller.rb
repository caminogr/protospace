class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
    redirect_to prototype_path(params[:prototype_id])
  end

  def destroy
    Like.find(params[:id]).destroy
    redirect_to prototype_path(params[:prototype_id])
  end
end
