class PrototypesController < ApplicationController

  before_action :prototype_id, only: [:edit, :update, :destroy, :show]

  def index
    @prototypes = Prototype.order('id DESC').page(params[:page]).per(8)
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    @prototype = current_user.prototypes.new(create_params)

    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @like = Like.find_by(user_id: current_user.id, prototype_id: params[:id]) if user_signed_in?
    @comment = Comment.new
    @comments = @prototype.comments
  end

  def edit
  end

  def update
    if @prototype.update(create_params)
      redirect_to root_path, notice: "YOYOYO! Updated!"
    else
      render :edit
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path, notice: "Successfully deleted!"
  end

  private
  def create_params
    params.require(:prototype).permit(:catch_copy, :title, :concept, :user_id,
      prototype_images_attributes: [:id, :content, :content_type, :prototype_id]).merge(tag_list: params[:prototype][:tag])
  end

  def prototype_id
    @prototype = Prototype.find(params[:id])
  end

end
