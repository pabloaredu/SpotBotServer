class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # session[:user_id] = user.id
      render json: {"email": user_params[:email], "password": user_params[:password]}
    else
      render json: { status: 422, error: @user.errors }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :license_plate, :email, :password, :password_confirmation)
  end
end