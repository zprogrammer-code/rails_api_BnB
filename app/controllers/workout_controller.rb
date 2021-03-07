class WorkoutController < ApplicationController
    def index
        @workouts = Workout.all
        render json: {@workouts}
    end

    def show
        @workout = User.find(params[:id])
        render json: {@workout}
    end


    def create
        @workout = User.create(workout_params)
        if @workout.save
            render json: {status:created,
                    workout: @workout}
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

end
