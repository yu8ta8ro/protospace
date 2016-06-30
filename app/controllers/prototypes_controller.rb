class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(catch_copy: create_params[:catch_copy], title: create_params[:title], concept: create_params[:concept], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def create_params
    params.require(:prototype).permit(:catch_copy, :title, :concept)
  end

end
