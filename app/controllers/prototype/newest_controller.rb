class Prototype::NewestController < ApplicationController
  def index
    @prototypes = Prototype.order('created_at DESC').page(params[:page]).per(8)
    render 'prototypes/index'
  end
end
