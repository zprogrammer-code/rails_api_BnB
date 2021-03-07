SessionsController < ApplicationControllerc








    def create
        @user = User.create(
            {
                username: 'username',
                password: 'password'
            }
        )
        render json: {status:created,
                        user: @user}
    end