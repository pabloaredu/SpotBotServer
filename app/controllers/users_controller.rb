class UsersController < ApplicationController

  skip_before_action :verify_authenticity_token

  def new
  end

  def create
    Rails.logger.info params
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :license_plate, :password, :password_confirmation, :email)
  end
end
