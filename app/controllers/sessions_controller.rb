class SessionsController < ApplicationController
  # app/controllers/sessions_controller.rb
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      payload = { user_ id: user.id}
      token = JWT.encode(payload, "spotbot")
      session[:user_id] = user.id
      render json: {user: user, jwt: token}
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
