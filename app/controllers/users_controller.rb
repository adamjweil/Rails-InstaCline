class UsersController < ApplicationController

  def new
    user = User.new
    render json: user
  end

  def create
    user = User.new(userparams)
    if user.save
      render json: user
    else
      render json: { message: "create user failed"}
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end