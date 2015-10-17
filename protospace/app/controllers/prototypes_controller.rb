class PrototypesController < ApplicationController
  def index
  end
  def new
    @prototype = Prototype.new
    @prototype.prototype_photos.build
  end
end
