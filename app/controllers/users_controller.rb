class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(update_params)
    if current_user.save
      flash[:success] = "YOYOYO! Updated!"
      redirect_to prototypes_path
    else
      flash[:danger] = "Update failed"
      redirect_to edit_user_path
    end
  end

  private

  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :works)
  end

end
