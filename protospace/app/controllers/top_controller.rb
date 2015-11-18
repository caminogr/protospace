class TopController < ApplicationController
  def index
    @prototypes = Prototype.order("id ASC").page(params[:page]).per(8)
  end
end
