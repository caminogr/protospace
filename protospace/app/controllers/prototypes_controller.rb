class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def show
    @prototype = the_prototype
  end
  def new
    @prototype = Prototype.new
    @prototype.prototype_photos.build
  end

  def create
  if  Prototype.create(prototype_params)
    redirect_to :root and return
    else
      render :new
    end
  end

  def edit
    @prototype = the_prototype
  end

  def update
    @prototype = the_prototype
    if @prototype.update(prototype_params)
      redirect_to :root and return
    else
      render :new
    end
  end

  def destroy
    the_prototype.destroy
    redirect_to :root and return
  end

  private
  def the_prototype
    Prototype.find(params[:id])
  end
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_photos_attributes: [:id, :prototype_id, :status, :image])
  end
end
