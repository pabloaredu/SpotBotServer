class UsersController < ApplicationController

  def new
  end

  def create

    Rails.logger.debug params.inspect

    Rails.logger.info "This are the params: #{user_params}"
    # user = User.new (params.user.name, params.user.license_plate, params.user.password, params.user.password_confirmation, params.user.email)
    # if user.save
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

  def user_params
    params.require(:users).permit(:name, :license_plate, :password, :password_confirmation, :email)
  end
end
