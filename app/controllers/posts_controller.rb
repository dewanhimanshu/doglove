class PostsController < ApplicationController
	 before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
	def index
		@post = Post.all
	end

	def new
		@post = Post.new
    end
	
	def create 
			@post = Post.create(
				title: params[:post][:title],
				content: params[:post][:content],
				avatar:  params[:post][:avatar],
				)
			
			@post.user_id = current_user.id
			@post.save
			redirect_to @post
	end

	def show
		 @post = Post.find(params[:id])
	end

	def edit
       @post = Post.find(params[:id])
	end

	def update
		 @post = Post.find(params[:id])
		 @post.update(
				title: params[:post][:title],
				content: params[:post][:content],
				avatar:  params[:post][:avatar],
				)
			redirect_to @post

	end

	def destroy
		       @post = Post.find(params[:id])
		       @post.destroy
		       redirect_to action: 'index'

	end
  def upvote
  @post = Post.find(params[:id])
  @post.liked_by current_user
  redirect_to @post
end

def downvote
  @post = Post.find(params[:id])
  @post.downvote_from current_user
  redirect_to @post
end

end
