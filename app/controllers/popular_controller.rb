class PopularController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user, :prototype_images).order('likes_count DESC').page(params[:page]).per(8)
  end
end
