class TopController < ApplicationController
  def index
    @prototypes = Prototype.order("id ASC")
  end
end
