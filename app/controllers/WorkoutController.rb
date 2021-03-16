class WorkoutController < ApplicationController
    def index
        @workouts = Workout.all
        render json: {@workouts}
    end

    def show
        @workout = Workout.find(params[user_id])
        render json: {@workout}
    end


    def create
        @workout = Workout.create(workout_params)
        if @workout
            render json: {status:created,
                    workout: @workout}
        else
            render json: {message: 'unable to create workout'}
            
        end
    end

    def update
        @workout = Workout.find(params[:id])
        if @workout
            @workout.update(workout_params)
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

def workout_params
#Whitelisting for strng parameters
params.require(:workout).permit(:username, :password)
end

def find_workout
    @workout = Workout.find(params[:id])
end

end
