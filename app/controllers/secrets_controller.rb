class SecretsController < ApplicationController
  def show
    if logged_in?
    else
      redirect_to root_path
    end
  end
end
