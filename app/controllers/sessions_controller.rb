class SessionsController < ApplicationController

  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    if auth_hash["uid"].nil?
      flash[:notice] = "Incorrect email or password"
    else
      @user = User.find_or_create_from_omniauth(auth_hash)
      if @user
        session[:user_id] = @user.id
      else
        flash[:notice] = "Incorrect email or password"
      end
    end
    redirect_to favorite_path(3)
  end

  def destroy
    flash[:notice] = "Goodbye, #{@current_user.username}! Thanks for visiting!"
    session[:user_id] = nil
    redirect_to root_path
  end
end
