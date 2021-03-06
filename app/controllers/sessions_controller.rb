# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      remember user
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
end
