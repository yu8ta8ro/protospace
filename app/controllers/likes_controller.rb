class LikesController < ApplicationController

  before_action :prototype_id, only: [:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    like.destroy
    @likes = Like.where(prototype_id: params[:prototype_id])
  end

  private
  def prototype_id
    @prototype = Prototype.find(params[:prototype_id])
  end
end
