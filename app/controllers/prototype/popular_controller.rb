class Prototype::PopularController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).order('likes_count DESC').page(params[:page]).per(8)
  end
end
