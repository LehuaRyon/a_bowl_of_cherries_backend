class Api::V1::SessionsController < ApplicationController
  # def login
  def create
    # byebug
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Incorrect username or password. Please try again."}, status: :forbidden
    end
    # find the user by username, if we have the username & password is authenticated successfully, render user otherwise tell them error
  end
  # allows me to use set_user for signup AND login

  # def autologin
  #   # byebug
  #   if logged_in_user
  #     render json: {user: UserSerializer.new(logged_in_user)}
  #   end
  # end

  def autologin
    render json: {user: UserSerializer.new(logged_in_user), token: encode_token(logged_in_user.id)}
  end
end
