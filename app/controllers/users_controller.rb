class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.where(user_id: current_user.id)
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to controller: :prototypes, action: :index
  end

  private
  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :works)
  end
end
