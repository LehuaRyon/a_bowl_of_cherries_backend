class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :render_status_unprocessable

    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_KEY"])
    end

    # def user_token
    #     request.headers["Authorization"]
    # end

    # def decode_token
    #     JWT.decode(user_token, ENV["JWT_KEY"])
    # end

    # # def current_user
    # def logged_in_user
    #     User.find_by_id(decode_token[0]["user_id"])
    # end
    # call call in response to any fetch request that has Authorization header

    def logged_in_user
        User.find(decoded_token["user_id"])
    end

    def render_status_unprocessable(error)
        render json: {errors: error.record.errors.full_messages.to_sentence}, status: :unprocessable_entity
        # give record with error
        # usually with record invalid it will give unprossible status but no sending back errors
            # this method says when error happens, dont just throw error but rescue it from ActiveRecord::RecordInvalid class (run this code, taking in that error, instead when normally an error is thrown)
        # anything that throws an activerecord record invalid error, will run this code and render this json
    end

    private

    def user_token
        request.headers["Authorization"]
    end

    def decoded_token
        JWT.decode(user_token, ENV["JWT_KEY"])[0]
    end
end
