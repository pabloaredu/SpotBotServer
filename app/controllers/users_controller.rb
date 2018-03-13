class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new (user_params)
    if @user.save
      # session[:user_id] = user.id
      respond_to do |format|
        format.json { status: 200, render json: @user}
      end

      # respond_to json: {
      #   status: 200,
      #   message: "Hello there!",
      # }.to_json
    else
      # redirect_to '/signup'
      # respond_to @user.errors.messages
      respond_to do |format|
        format.json { status: 200, render json: @user.errors.messages}
      end
    end

    # Client.new(params[:client])

  end

  private

  def user_params
    params.require(:user).permit(:name, :license_plate, :password, :password_confirmation, :email)
  end
end
