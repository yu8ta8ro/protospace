class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])

    if comment_params
      current_user.comments.create(comment_params)
    else
      redirect_to prototype_path(@prototype), notice: "Failed"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(prototype_id: params[:prototype_id])
  end
end
