class CommentsController < ApplicationController
	def create
		@comment =Comment.create(comment_params)
		redirect_to blogs_path
	end
	def comment_params
		params.require(:comment).permit(:comment, :post_id)
	end

end
