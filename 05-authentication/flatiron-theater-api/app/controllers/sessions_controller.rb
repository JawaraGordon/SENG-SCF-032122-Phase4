class SessionsController < ApplicationController
    def create
        # user = User.find_by!(name: params[:username])
        user = User.find_by(name: params[:username])
        # if user && user.authenticate(params[:password])
        # if user &.authenticate(params[:password])
        if user.authenticate(params[:password])
            render json: user, status: :ok
        else render json: {error: "invalid password or username"}, status: :unprocessable_entity
        end
    end
end
