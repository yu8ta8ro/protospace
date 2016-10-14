class PrototypesController < ApplicationController

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

  private
  def create_params
    params.require(:prototype).permit(:catch_copy, :title, :concept, :user_id, prototype_images_attributes: [:id, :content, :content_type, :prototype_id])
  end

end
