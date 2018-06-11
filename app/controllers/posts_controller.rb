class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def new
		@post = Post.new
	end
	
	def create 
			Post.create(
				title: params[:post][:title],
				content: params[:post][:content],
				)
			redirect_to 'index'
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
				)
			redirect_to @post

	end

	def destroy
		       @post = Post.find(params[:id])
		       @post.destroy
		       redirect_to action: 'index'

	end
end
