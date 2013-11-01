class WorkoutsController < ApplicationController
	
	def index
		@workouts = Workout.all
	end

	def new
		@workout = Workout.new
	end

	def show
		@workout = Workout.find(params[:id])
	end

	def create
		@workout = Workout.new(params[:workout].permit(:name, :repetitions, :sets))
		@workout.save
		redirect_to workouts_path
	end

	def edit
		@workout = Workout.find(params[:id])
	end

	def update
		@workout = Workout.find(params[:id])
		if @workout.update_attributes(params[:workout].permit(:name, :repetitions, :sets))
			redirect_to @workout
		else 
			render "edit"
		end
	end

	def destroy
		Workout.find(params[:id]).destroy
		redirect_to workouts_url
	end

end