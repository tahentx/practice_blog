class SessionsController < ApplicationController
	def create
 	  if current_user
 		redirect_to new_tweet_path
 	  end
    end
	def destroy
	end
end
