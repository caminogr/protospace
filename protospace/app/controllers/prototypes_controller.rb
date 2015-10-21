class PrototypesController < ApplicationController
  def index
  end
  def new
    @prototype = Prototype.new
    @prototype.prototype_photos.build
  end

  def create
  if  Prototype.create(create_params)
    redirect_to :root and return
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_photos_attributes: [:prototype_id, :status, :image])
  end
end
