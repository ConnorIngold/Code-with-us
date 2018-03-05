class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def show
    # set_user
    authorize @user
  end

  def edit
    # set_user
    authorize @user
  end

  def update
    # set_user
    @user = current_user
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
    authorize @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:description, :photo, :photo_cache)
  end
end

