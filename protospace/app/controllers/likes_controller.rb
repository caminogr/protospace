class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(prototype_id: params[:prototype_id])
  end

  def destroy
    Like.find(params[:id]).destroy
  end
end
