class LikesController < ApplicationController
  def create
    current_user.likes.create(prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
    @like = current_user.likes.find_by(prototype_id: @prototype.id)
  end

  def destroy
    Like.find(params[:id]).destroy
  end
end
