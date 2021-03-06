class CommentsController < ApplicationController       
       before_filter :authenticate, :only => :destroy
       
       def create
		@post = Post.find(params[:post_id])
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment])
		redirect_to post_path(@post)
	end
  
	def edit
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end
	
	def update
		@post=Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		if @comment.update_attributes(params[:comment])
		     flash[:notice] = "Post updated successfully"
		     redirect_to @post
		end
	end
	def destroy
	       @post=Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end
end


