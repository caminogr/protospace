class TagsController < ApplicationController
  def show
    taggings = ActsAsTaggableOn::Tagging.where(tag_id: params[:id])
  end
end
