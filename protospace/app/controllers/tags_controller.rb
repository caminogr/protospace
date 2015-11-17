class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    taggings = ActsAsTaggableOn::Tagging.where(tag_id: params[:id])
    @prototypes = taggings.map{|tagging| tagging.taggable}
  end
end
