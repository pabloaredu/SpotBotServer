class UsersController < ApplicationController

  def new
  end

  def create

    Rails.logger.debug params.inspect

    Rails.logger.info "This are the params: #{params}"
    # @user = User.new (user_params)
    # if @user.save
    #   session[:user_id] = user.id
    #   redirect_to '/'
    # else
    #   redirect_to '/signup'
    # end

    # Client.new(params[:client])

    render json: {
      status: 200,
      message: "Hello there!",
    }.to_json
  end

  private

  # def user_params
  #   params.require(:user).permit(:name, :license_plate, :password, :password_confirmation, :email)
  # end
end
