class PrototypesController < ApplicationController

  before_action :prototype_id, only: [:edit, :update, :destroy]

  def index
    @prototypes = Prototype.order('id DESC')
  end

  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    @prototype = Prototype.new(create_params)

    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
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
    if @prototype.destroy
      redirect_to root_path, notice: "Successfully deleted!"
    else
      render :index
    end
  end

  private
  def create_params
    params.require(:prototype).permit(:catch_copy, :title, :concept, :user_id,
      prototype_images_attributes: [:id, :content, :content_type, :prototype_id])
  end

  def prototype_id
    @prototype = Prototype.find(params[:id])
  end

end
