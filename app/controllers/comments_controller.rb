class CommentsController < ApplicationController
	def create 
		blog_id=params[:comment][:blog_id]
		@comment =Comment.create(comment_params)
		redirect_to blog_path(blog_id)
	end
	def comment_params
		params.require(:comment).permit(:comment, :blog_id, :user_id, :created_at)
	end


end
