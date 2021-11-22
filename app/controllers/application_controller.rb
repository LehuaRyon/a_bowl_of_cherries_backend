class ApplicationController < ActionController::API

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

    private

    def user_token
        request.headers["Authorization"]
    end

    def decoded_token
        JWT.decode(user_token, ENV["JWT_KEY"])[0]
    end
end
