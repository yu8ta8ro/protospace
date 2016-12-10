class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
 end

  def show
    @prototypes = Prototype.includes(:user, :prototype_images)
                           .tagged_with(params[:tag_name])
                           .order('likes_count DESC')
                           .page(params[:page]).per(8)
  end
end
