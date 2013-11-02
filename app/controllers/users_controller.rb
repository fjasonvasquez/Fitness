class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
end

	def show
		@user = User.find(params[:id])
	end

	def create
	 @user = User.create(params[:user]
			.permit(:email, :password, :password_confirmation))
	 @user.save
		# redirect_to action: "new"
		redirect_to workouts_url
	end

	def destroy
		Users.find(params[:id]).destroy
		redirect_to authentications_new_path
	end
end

