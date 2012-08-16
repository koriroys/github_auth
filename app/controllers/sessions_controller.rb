class SessionsController < ApplicationController
  def create
    session[:github] = request.env['omniauth.auth']
    flash[:notice] = 'Logged in Successfully'
    redirect_to root_path
  end

  def destroy
    reset_session
    flash[:notice] = "Logged out Successfully"
    redirect_to root_path
  end
end
