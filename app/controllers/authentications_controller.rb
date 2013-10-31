class AuthenticationsController < ApplicationController
	def new
	# this is a login form
	if current_user 
		redirect_to workouts_url
	else 
		@user = User.new
	end
end

	def create
		user = User.find_by(email: params[:user][:email])
	    if user != nil
	        # authenticate user
	        if user.authenticate(params[:user][:password])
	          session[:user_id] = user.id
	          redirect_to workouts_url
	        else
	          flash.now.alert = "Unable to sign you in. Please try again."
	          render :new
	        end
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to "authentications/new"
	end

end
