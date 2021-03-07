class WorkoutController < ApplicationController
    def index
        @workouts = Workout.all
        render json: {@workouts}
    end

    def show
        @workout = Workout.find(params[:id])
        render json: {@workout}
    end


    def create
        @workout = Workout.create(workout_params)
        if @workout.save
            render json: {status:created,
                    workout: @workout}
    end

    def update
        @workout = Workout.find(params[:id])
        if @workout
            @workout.update(user_params)
            render json: {message: 'workout successfully updated', status: updated}
        else
            render json: {message: 'unable to update workout '}
    end

    def destroy
        @workout = Workout.find(params[:id])
        if @workout
            @workout.destroy
            render json: {message: 'workout successfully destroyed', status: destroyed}
        else
            render json: {message: 'unable to delete workout' }
            
        end
    end


private

def user_params
#Whitelisting for strng parameters
params.require(:user).permit(:username, :password)
end
end

end
