class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(update_params)
      redirect_to prototypes_path, success: "YOYOYO! Updated!"
    else
      redirect_to edit_user_path, alert: "Update failed"
    end
  end

  private

  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :work)
  end

end
