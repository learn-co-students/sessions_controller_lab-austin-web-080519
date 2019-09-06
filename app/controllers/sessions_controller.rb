class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params.permit(:name)[:name]
    if session[:name] == nil
      redirect_to sessions_new_path
      return
    elsif session[:name].empty?
      redirect_to sessions_new_path
      return
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end
end
