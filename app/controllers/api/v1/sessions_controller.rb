class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Incorrect username or password. Please try again."}, status: :forbidden
    end
  end

  def autologin
    render json: {user: UserSerializer.new(logged_in_user), token: encode_token(logged_in_user.id)}
  end
  
end
