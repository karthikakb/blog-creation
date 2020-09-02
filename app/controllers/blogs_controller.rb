class BlogsController < ApplicationController
	 before_action :authenticate_user!, except: [:index, :show, :home_page]
	def index
		@blogs =Blog.all
	end
	def show
		@blog=Blog.find(params[:id])
		@comments = Comment.where(post_id: @blog.id)
		@user=User.find(current_user.id)
		@comment=Comment.new(post_id: @blog.id, user_id:@user.id)
	end
	def new
		@user=User.find(current_user.id)
		@blog =Blog.new(user_id: @user.id )
		
	end
	def list
		@user=User.find(current_user.id)
		@blog=Blog.where(user_id: @user.id)
	end
	def create
		@blog =Blog.create(blog_params)
		if @blog.valid?
    	  @blog.save
    	  redirect_to blogs_path
     else
      render :new	  
	end
	end
	def edit
		@blog=Blog.find(params[:id])
	end
	def update
		@blog = Blog.find(params[:id])
    @blog.update(blog_params)
    if @blog.valid?
    	  @blog.save
    	  redirect_to blogs_path
     else
      render :new	  
	end
	end
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :description, :user_id)
    end

end
