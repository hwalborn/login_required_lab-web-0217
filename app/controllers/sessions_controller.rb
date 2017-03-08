class SessionsController < ApplicationController
  def new
  end

  def homepage
    unless logged_in?
      redirect_to root_path
    end
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to homepage_path
    else
      redirect_to root_path
    end
  end

  def destroy
    if logged_in?
      session.delete :name
    end
    redirect_to root_path
  end
end
