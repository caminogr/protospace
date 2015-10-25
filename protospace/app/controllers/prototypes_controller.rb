class PrototypesController < ApplicationController
  def show
  end
  def new
    @prototype = Prototype.new
    @prototype.prototype_photos.build
  end

  def create
    @prototype = Prototype.new(create_params)
    if @prototype.save
      redirect_to :root
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_photos_attributes: [:prototype_id, :status, :image])
  end
end
