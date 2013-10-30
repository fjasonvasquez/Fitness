class WorkoutsController < ApplicationController
	
	def index
		@workouts = Workout.all
	end

	def new
		@workouts = Workout.new
	end

	def show
		@workouts = Workout.find(params[:id])
	end

	def create
		@workout = Workout.new(params[:workout].permit(:name, :typing_system, :memory_management))
		@workout.save
		redirect_to workouts_path
	end


	def destroy
		Workout.find(params[:id]).destroy
		redirect_to workouts_url
	end


end