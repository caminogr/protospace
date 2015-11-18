class NewestController < ApplicationController
  def index
    @prototypes = Prototype.order(id: :desc)
  end
end
