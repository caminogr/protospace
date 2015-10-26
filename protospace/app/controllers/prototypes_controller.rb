class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def show
    @prototype = Prototype.find(params[:id])
  end
  def new
    @prototype = Prototype.new
    @prototype.prototype_photos.build
  end

  def create
    @prototype = Prototype.new(create_params)
    @prototype.prototype_photos.build
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
