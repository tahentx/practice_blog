class CommentsController < ApplicationController
	
	def create
		@post = Post.find_by(uuid: params[:id])
        @post.comments.create(comment_params)
        redirect_to posts_path(@post.uuid)
	end

	def destroy
	end
	
	private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
