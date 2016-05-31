class UsersController < ApplicationController

  def show
    @prototypes = Prototype.where(params[:id])
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :works)
  end
end
