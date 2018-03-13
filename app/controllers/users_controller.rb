class UsersController < ApplicationController

  def new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      # session[:user_id] = @user.id
      render json: {
        status: 200,
        message: "Hello there!",
      }.to_json
      # render json: @controller

    else
      puts @user.inspect
      puts @user.errors.full_messages
      # render json: @controller.errors.messages
    end

    # Client.new(params[:client])

  end

  private

  def user_params
    params.require(:user).permit(:name, :license_plate, :password, :password_confirmation, :email)
  end
end
