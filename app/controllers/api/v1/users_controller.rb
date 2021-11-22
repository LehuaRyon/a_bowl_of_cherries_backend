class Api::V1::UsersController < ApplicationController
    # before_action :set_user, only: [:show, :update, :destroy]

  # GET /users/1
#   def show
#     render json: @user
#   end

  # POST /months
  def create
    # byebug
    user = User.new(user_params)
    if user.save
      render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
    else
      render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
    end

    # user = User.create(user_params)
    # token = encode_token(user.id)
    # render json: {user: user, token: token}
  end

  # PATCH/PUT /users/1
#   def update
#     if @user.update(user_params)
#       render json: @user
#     else
#       render json: @user.errors, status: :unprocessable_entity
#     end
#   end

  # DELETE /months/1
#   def destroy
#     if @user.destroy
#       head :no_content
#     else
#       # render json: @month.errors, status: :unprocessable_entity
#       render json: {error: @user.errors.messages}, status: :unprocessable_entity
#     end
#   end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def user_params
      # params.require(:user).permit(:username, :password)
        params.permit(:username, :password)
    end
end
