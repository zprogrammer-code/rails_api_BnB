
    class UsersController < ApplicationController


        def index
            @users = User.all
            render json: {@users}
        end
  

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


  private

  def user_params
    #Whitelisting for strng parameters
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :qualification, :college, :stream, :phone)
  end
end
