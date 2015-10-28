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
  if  Prototype.create(create_params)
    redirect_to :root and return
    else
      render :new
    end
  end

  def edit
    @prototype = Prototype.find(params[:id])
    render :new
  end

  def update
    @prototype = Prototype.find(params[:id])
    @prototype.update(create_params)
      redirect_to :root and return
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_photos_attributes: [:prototype_id, :status, :image])
  end
end
