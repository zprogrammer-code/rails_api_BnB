
module Api
module V1
    
    class UsersController < ApplicationController

    def index
        users = Users.order('created_at DESC');
        render json: {status:'SUCCESS', message: 'Loaded users', data:users}, status: :ok
    end

    def create
        user = Users.create(
            {
                username: 'username',
                password: 'password'
            }
        )
        render json: {status:created,
                        user: user}
    end
end
