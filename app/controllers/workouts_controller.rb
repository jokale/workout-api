class WorkoutsController < ApplicationController
    def index 
        @workouts = Workout.all 
        render json: @workouts, include: [:athlete, :body_part] 
    end 


    def show 
        @workout = Workout.find(params[:id])
        render json: @workout, include: [:athlete, :body_part],status:200 
    end 

    def create 
        @workout = Workout.create(workout_params)
        render json: @workout, status:200 
    end 

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout, status:200 
    end 


    def destroy 
        @workout = Workout.find(params[:id])
        @workout.delete 
        render json: {workoutId: @workout.id}
    end 

    private
    def workout_params
        # params.permit(:name, :description)
         params.require(:workout).permit(:name, :description)

    end 

end