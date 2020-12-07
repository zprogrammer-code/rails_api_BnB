
module Api
module v1
    
    class UsersController < ApplicationController

    def index
        users = Users.order('created_at DESC');
        render json: {status:'SUCCESS', message: 'Loaded users', data:users, status: 'ok'}
    end
end
