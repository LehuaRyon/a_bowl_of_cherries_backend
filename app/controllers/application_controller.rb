class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordInvalid, with: :render_status_unprocessable

    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_KEY"])
    end

    def logged_in_user
        User.find(decoded_token["user_id"])
    end

    def render_status_unprocessable(error)
        render json: {errors: error.record.errors.full_messages.to_sentence}, status: :unprocessable_entity
    end

    private

    def user_token
        request.headers["Authorization"]
    end

    def decoded_token
        JWT.decode(user_token, ENV["JWT_KEY"])[0]
    end
    
end
