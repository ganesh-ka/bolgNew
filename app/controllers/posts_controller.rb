class PostsController < ApplicationController
before_filter :authenticate_user!#,# :except => [:index, :show]
  def edit
		@post = Post.find(params[:id])
	end
		
	def update
		@post=Post.find(params[:id])
		if @post.update_attributes(params[:post])
		     flash[:notice] = "Post updated successfully"
		     redirect_to @post
		end
	end

	def destroy
		@post=Post.find(params[:id])
		@post.destroy
		redirect_to :action => 'index'
	end

  	def new
		@post = Post.new
	end
	
	def index
	       @posts = Post.all
	       #respond_to do |format|		
	end
	       
	
	def create
		@post = Post.new(params[:post])
	    if(@post.save)
		flash[:notice] = "Post saved successfully"
		redirect_to posts_path
	    end
	end

	def show
	    @posts = Post.find(params[:id])
      @user = User.find(params[:id])
	end
end