class TagsController < ApplicationController
  def show
    taggings = ActsAsTaggableOn::Tagging.where(tag_id: params[:id])
    @prototypes = taggings.map{|tagging| tagging.taggable}
  end
end
