class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]
  def show
    @prototype
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
    @prototype
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to :root and return
    else
      render :new
    end
  end

  def destroy
    @prototype.destroy
    redirect_to :root and return
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_photos_attributes: [:id, :prototype_id, :status, :image])
  end
end
