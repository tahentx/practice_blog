class SessionsController < ApplicationController
	def create
 	  if current_user
 		redirect_to new_tweet_path
 	  end
    end
	def destroy
	  session[:user_id] = nil
  	  redirect_to login_path
	end
end
