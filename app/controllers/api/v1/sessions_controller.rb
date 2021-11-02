class Api::V1::SessionsController < ApplicationController
  def login
    # byebug
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "Incorrect username or password. Please try again."}
    end
  end
  # allows me to use set_user for signup AND login

  def autologin
    # byebug
    if logged_in_user
      render json: {user: UserSerializer.new(logged_in_user)}
    end
  end
end
