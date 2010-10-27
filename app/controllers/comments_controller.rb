=begin
class CommentsController < ApplicationController
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
	
	def index
		@posts = Post.all
	end

  	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
	    if(@post.save)
		flash[:notice] = "Post saved successfully"
		redirect_to @post
	    end
	end

	def show
	    @posts = Post.find(params[:id])
	end

=end


class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end
end