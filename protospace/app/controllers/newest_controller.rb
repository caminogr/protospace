class NewestController < ApplicationController
  def index
    @prototypes = Prototype.order(id: :desc).page(params[:page]).per(8)
  end
end
