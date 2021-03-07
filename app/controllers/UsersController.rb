
    class UsersController < ApplicationController


        def index
            @users = User.all
            render json: {@users}
        end
  
        def show
            @user = User.find(params[:id])
            render json: {@user}
        end

    
        def create
            @user = User.create(user_params)
            if @user.save
                render json: {status:created,
                        user: @user}
        end

        def update
            @user = user.find(params[:id])
            if @user
                @user.update(user_params)
                render json: {message: 'user successfully updated', status: updated}
            else
                render json: {message: 'unable to update user '}
        end

        def destroy
            @user = user.find(params[:id])
            if @user
                @user.destroy
                render json: {message: 'user successfully destroyed', status: destroyed}
            else
                render json: {message: 'unable to delete user' }
                
            end
        end


  private

  def user_params
    #Whitelisting for strng parameters
    params.require(:user).permit(:username, :password)
  end
end
