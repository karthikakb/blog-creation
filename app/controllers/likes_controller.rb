class LikesController < ApplicationController
  before_action :find_post
  add_flash_types :info, :error, :warning

  def index
    if already_liked?
      flash[:alert] = "You can't like more than once"
    else
      @blog.likes.create(user_id: current_user.id)
    end
    redirect_to blogs_path(@blog)
    
  end

  private
  
  def find_post
    @blog = Blog.find(params[:blog_id])
  end

  def already_liked?
    @user=User.find(current_user.id)
    Like.where(user_id: @user.id, blog_id:
      params[:blog_id]).exists?
  end
  
end
