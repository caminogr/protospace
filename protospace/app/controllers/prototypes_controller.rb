class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]
  def index
    @prototypes = Prototype.order(likes_count: :desc)
  end

  def show
    @comment = Comment.new
    @like = current_user.likes.find_by(prototype_id: @prototype)
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_photos.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to :root
    else
      @prototype.prototype_photos.build
      render :new
    end
  end

  def edit
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
    params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_photos_attributes: [:id, :prototype_id, :status, :image]).merge(tag_list: params[:prototype][:tag])
  end
end
