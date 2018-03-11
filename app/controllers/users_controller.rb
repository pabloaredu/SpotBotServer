class UsersController < ApplicationController

  def new
  end

  def create
    Rails.logger.info params.user
    user = User.new(params.user.name, params.user.license_plate, params.user.password, params.user.password_confirmation, params.user.email)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:name, :license_plate, :password, :password_confirmation, :email)
  # end
end
