class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end
	
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find_by(uuid: params[:id])
	end

	def update
		@post = Post.find(params[:id])
	    if @post.update_attributes(post_params)
	      redirect_to root_path
	    else
	      render 'index'
	    end
	end
	
	def destroy
		@post = Post.find_by(params[:id])
		@post.destroy
		redirect_to root_path
	end

	private 
	def post_params
		params.require(:post).permit(:title, :text)
	end
end
