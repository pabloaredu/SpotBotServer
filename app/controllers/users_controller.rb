class UsersController < ApplicationController

  def new
  end

  def create
    puts "params"
    params.each_pair do |key, value|
      puts 'key: ' + key.to_s
      puts 'value: ' + value.to_s
    end
    c_params = user_params
    @user = User.new(c_params)
    puts "after creating user with c_params"
    c_params.each_pair do |key, value|
      puts 'key: ' + key.to_s
      puts 'value: ' + value.to_s
    end
    # puts "name"
    # puts c_params[:name]
    # puts "password"
    # puts c_params[:password]
    @user.password = c_params[:password]
    # puts "password_confirmation"
    # puts c_params[:password_confirmation]
    @user.password_confirmation = c_params[:password_confirmation]
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
    user_raw_params = params.require(:user)
    puts "user_raw_params: " + user_raw_params.inspect
    user_raw_params.permit(:name, :license_plate, :password, :password_confirmation, :email)
  end
end
