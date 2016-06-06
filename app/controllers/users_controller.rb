class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(update_params)
    flash[:success] = "YOYOYO! Updated!"
    redirect_to prototypes_path
  end

  private

  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :works)
  end

end
