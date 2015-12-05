class SessionsController < ApplicationController
 
  # displays login form
  def new
  end
 
  # checks login data and starts session
  def create
    par = login_params
    user = User.find_by(email: par[:email])
    if user && user.authenticate(par[:password])
      # Save the user id inside the browser cookie. 
      # This is how we keep the user # logged in 
      # when they navigate around our website.
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      redirect_to login_path, alert: 'Log in failed'
    end
  end
 
  # deletes sesssion
  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out'
  end
 
private
 
  def login_params
    params.permit(:email, :password)
  end
end