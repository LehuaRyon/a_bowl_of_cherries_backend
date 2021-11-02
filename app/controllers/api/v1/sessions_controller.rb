class Api::V1::SessionsController < ApplicationController
  def login
    # byebug
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      render json: {user: UserSerializer.new(user), token: "token will go here"}
    else
      render json: {error: "Incorrect username or password. Please try again."}
    end
  end
  # allows me to use set_user for signup AND login

  def autologin
  end
end
